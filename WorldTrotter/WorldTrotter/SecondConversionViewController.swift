//
//  SecondConversionViewController.swift
//  WorldTrotter
//
//  Created by jerli on 2021/12/8.
//

import UIKit

class SecondConversionViewController: UIViewController {
    
    private var degreeInF: UILabel!
    
    
    
    override func loadView() {
        let viewTemp = UIView()
        view = viewTemp
    }
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.blue
        setupDegree()
    }
    
    private func setupDegree() {
        degreeInF = UILabel()
        degreeInF.text = "212"
        degreeInF.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(degreeInF)
        
        let degreeInFXCenterConstratint = degreeInF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let degreeInFTopConstraint = degreeInF.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0)
        NSLayoutConstraint.activate([degreeInFXCenterConstratint, degreeInFTopConstraint])
    }
}
