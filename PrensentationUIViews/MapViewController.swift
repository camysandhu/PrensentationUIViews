//
//  MapViewController.swift
//  PrensentationUIViews
//
//  Created by simar mahi on 02/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import MapKit
class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude: CLLocationDegrees = 41.036803

        let longitude: CLLocationDegrees = 28.986542

        let latDelta: CLLocationDegrees = 0.01

        let lonDelta: CLLocationDegrees = 0.01

        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)

        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)

        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)

        self.mapView.setRegion(region, animated: true)

        let annotation: MKPointAnnotation = MKPointAnnotation()

        annotation.coordinate = location

        annotation.title = "India"

        annotation.subtitle = "tutlane.com"

        self.mapView.addAnnotation(annotation)

        }

        override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.

        }

        }

        
    
    

  


