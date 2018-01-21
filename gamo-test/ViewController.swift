//
//  ViewController.swift
//  gamo-test
//
//  Created by 蒲生廣人 on 2018/01/21.
//  Copyright © 2018年 蒲生廣人. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    var myMapView : MKMapView!

    @IBAction func mapButton(_ sender: Any) {
        myMapView = MKMapView()
        myMapView.frame = self.view.bounds
        myMapView.delegate = self
        
        self.view.addSubview(myMapView)
        
        let myLat: CLLocationDegrees = 37.506804
        let myLon: CLLocationDegrees = 139.930531
        let myCoordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLon)
        
        let myLatDist: CLLocationDistance = 100
        let myLonDist: CLLocationDistance = 100
        
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(myCoordinate, myLatDist, myLonDist);
        
        myMapView.setRegion(myRegion, animated: true)
        
        func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool){
            print("regionDidCahngeAnimated")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

