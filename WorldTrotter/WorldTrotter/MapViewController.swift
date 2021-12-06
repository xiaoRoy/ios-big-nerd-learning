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
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        view.addSubview(segmentedControl)
        
        
        let margin = view.layoutMarginsGuide
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margin.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        NSLayoutConstraint.activate([topConstraint, leadingConstraint, trailingConstraint])
    }
    
    private func setupPointsOfInterest() {
        let labelPointsOfInterest = UILabel()
        labelPointsOfInterest.text = "Points of Interest"
        labelPointsOfInterest.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelPointsOfInterest)
        
        let switchPointsOfInterest = UISwitch()
        switchPointsOfInterest.translatesAutoresizingMaskIntoConstraints = false
        switchPointsOfInterest.addTarget(self, action: #selector(hasPointsOfInterestChanged(_:)), for: UIControl.Event.valueChanged)
        view.addSubview(switchPointsOfInterest)
        
        let switchLeadingConstraint = switchPointsOfInterest.leadingAnchor.constraint(equalTo: labelPointsOfInterest.trailingAnchor, constant: 16.0)
        let switchTopConstraint = switchPointsOfInterest.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8.0)
       
        
        let labelLeadingConstraint = labelPointsOfInterest.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor)
        let labelTopConstraint = labelPointsOfInterest.centerYAnchor.constraint(equalTo: switchPointsOfInterest.centerYAnchor)
        
        
        NSLayoutConstraint.activate([labelLeadingConstraint, labelTopConstraint, switchLeadingConstraint, switchTopConstraint])
    }
    
    
    @objc
    private func mapTypeChanged(_ mapControl: UISegmentedControl) {
        let mapTypeDictionary = [0: MKMapType.standard, 1: MKMapType.hybrid, 2: MKMapType.satellite]
        if let mapType = mapTypeDictionary[mapControl.selectedSegmentIndex] {
            mapView.mapType = mapType
        }
    }
    
    @objc
    private func hasPointsOfInterestChanged(_ switchPointsOfInterect: UISwitch) {
        let hasPointsOfInterest = switchPointsOfInterect.isOn
        let pointOfInterestFilter: MKPointOfInterestFilter
        if hasPointsOfInterest {
            pointOfInterestFilter = MKPointOfInterestFilter.includingAll
        } else {
            pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        }
        mapView.pointOfInterestFilter = pointOfInterestFilter
        print("Switch is on:\(hasPointsOfInterest)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view.")
    }
}
