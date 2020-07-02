//
//  MapViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 09/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import GoogleMaps
import GooglePlaces

class MapViewController: UIViewController, CLLocationManagerDelegate,GMSMapViewDelegate{
    let mapBaseView = UIView()
    let mapSearchBar = UISearchBar()
    let mapView = GMSMapView()
    let locationManager = CLLocationManager()
    let listPlaceTable = UITableView()
    let cabangs = [
        kantorCabang(name: "Askrindo Bogor", long:-6.571802 , lat:  106.808158),
        kantorCabang(name: "Askrindo Cikini", long:-6.193592 , lat:  106.839413),
        kantorCabang(name: "Askrindo Pusat", long: -6.154424, lat: 106.844391)]
    var lastLocationLong : CLLocationDegrees = 0.0
    var lastLocationLan : CLLocationDegrees = 0.0
    // mapKey = AIzaSyDRbvUTXVtSjXPVyP3JNlqg6IBGHyKZbwA
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarMap()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        listPlaceTable.delegate = self
        listPlaceTable.dataSource = self
        
        mapView.delegate = self
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else {
            return
        }
        locationManager.startUpdatingLocation()
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
//        mapView.settings.indoorPicker = true
        mapView.padding = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        
        
            
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        lastLocationLong = location.coordinate.longitude
        lastLocationLan = location.coordinate.latitude
        locationManager.stopUpdatingLocation()
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Add Marker
        for cabang in cabangs{
            let marker = GMSMarker()
            marker.title = "\(cabang.name)"
            marker.position = CLLocationCoordinate2DMake(cabang.long, cabang.lat)
            marker.map = mapView
            // Center camera to marker position
            mapView.camera = GMSCameraPosition.camera(withTarget: marker.position, zoom: 13)
        }
    }
    
    open func distance(from location: CLLocation) -> CLLocationDistance{
        let distance = location.distance(from: location)
        return distance
    }
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
         if (UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {  //if phone has an app

            if let url = URL(string: "comgooglemaps-x-callback://?saddr=\(lastLocationLong)),\( lastLocationLan))&daddr=\(marker.position.longitude),\(marker.position.latitude)&directionsmode=driving") {
                           UIApplication.shared.open(url, options: [:])
                  }}
             else {
                    //Open in browser
                   if let urlDestination = URL.init(string: "https://www.google.co.in/maps/dir/?saddr=\(String(describing: lastLocationLong)),\(String(describing: lastLocationLan))&daddr=\(marker.position.longitude),\(marker.position.latitude)&directionsmode=driving") {
                                      UIApplication.shared.open(urlDestination)
                                  }
                       }

               }



}

struct  kantorCabang : Codable{
    var name : String
    var long : CLLocationDegrees
    var lat : CLLocationDegrees
}
