//
//  NearbyController.swift
//  TourProject_1
//
//  Created by Naranbaatar Bayaraagiin on 10/30/15.
//  Copyright © 2015 Naranbaatar Bayaraagiin. All rights reserved.
//

import Foundation
import MapKit

class NearbyController: UIViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    @IBOutlet weak var myLocation: MKMapView!
    
    var locationManager = CLLocationManager()
    var myPosition = CLLocationCoordinate2D()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // menu button action part
        menuButton.target = self.revealViewController()
        menuButton.action = Selector("revealToggle:")
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
        
        // Location service part
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        print("Got Location \(newLocation.coordinate.latitude), \(newLocation.coordinate.longitude)")
        myPosition = newLocation.coordinate
        locationManager.stopUpdatingLocation()
        
        var alert: UIAlertView = UIAlertView()
        alert.title = "My position"
        alert.message = "\(newLocation.coordinate.latitude), \(newLocation.coordinate.longitude)"
        alert.addButtonWithTitle("Ok")
        alert.show()
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: newLocation.coordinate, span: span)
        myLocation.setRegion(region, animated: true)
        locationManager.stopUpdatingLocation()
        
    }
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
}