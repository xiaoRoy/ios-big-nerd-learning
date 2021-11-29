//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Jerry Li on 2021/11/9.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    private var mapView: MKMapView!
    
    override func loadView() {
        let tempMapView = MKMapView()
        mapView = tempMapView
        view = tempMapView
        setupMapControl()
    }
    
    private func setupMapControl() {
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0;
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChaged(_:)), for: .valueChanged)
        view.addSubview(segmentedControl)
        
        
        let margin = view.layoutMarginsGuide
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        NSLayoutConstraint.activate([topConstraint, leadingConstraint, trailingConstraint])
        
      
    }
    
    @objc
    private func mapTypeChaged(_ mapControl: UISegmentedControl) {
        let mapTypeDictionary = [0: MKMapType.standard, 1: MKMapType.hybrid, 2: MKMapType.satellite]
        if let mapType = mapTypeDictionary[mapControl.selectedSegmentIndex] {
            mapView.mapType = mapType
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view.")
    }
}
