//
//  thirdViewController.swift
//  phase1
//
//  Created by Yoni Geer on 3/7/18.
//  Copyright © 2018 Yoni Geer. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class thirdViewController: UIViewController, CLLocationManagerDelegate,MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager=CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate=self
        locationManager.desiredAccuracy=kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation: CLLocation = locations[0]
       
        
         let latitude=userLocation.coordinate.latitude
         let longitude=userLocation.coordinate.longitude
         
         let latdelta:CLLocationDegrees = 0.05
         let londelta:CLLocationDegrees = 0.05
         
         let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latdelta, longitudeDelta: londelta)
         
         
         let coordinates: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
         
         let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: span)
         
         self.map.setRegion(region, animated: true)
         print(locations[0])
         print(userLocation.speed)
    }
}
