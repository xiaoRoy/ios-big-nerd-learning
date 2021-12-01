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
    
    private var segmentedControl: UISegmentedControl!
    
    override func loadView() {
        let tempMapView = MKMapView()
        mapView = tempMapView
        view = tempMapView
        setupMapControl()
        setupPointsOfInterest()
    }
    
    private func setupMapControl() {
        segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
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
    
    private func setupPointsOfInterest() {
        let labelPointOfInterest = UILabel()
        labelPointOfInterest.text = "Points of Interest"
        labelPointOfInterest.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelPointOfInterest)
        
        let switchPointOfInterest = UISwitch()
        switchPointOfInterest.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(switchPointOfInterest)
        
        let switchLeadingConstraint = switchPointOfInterest.leadingAnchor.constraint(equalTo: labelPointOfInterest.trailingAnchor, constant: 16.0)
        let switchTopConstraint = switchPointOfInterest.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8.0)
       
        
        let labelLeadingConstraint = labelPointOfInterest.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor)
        let labelTopConstraint = labelPointOfInterest.centerYAnchor.constraint(equalTo: switchPointOfInterest.centerYAnchor)
        
        
        NSLayoutConstraint.activate([labelLeadingConstraint, labelTopConstraint, switchLeadingConstraint, switchTopConstraint])
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
