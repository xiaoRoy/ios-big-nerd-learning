//
//  SecondConversionViewController.swift
//  WorldTrotter
//
//  Created by jerli on 2021/12/8.
//

import UIKit

class SecondConversionViewController: UIViewController {
    
    private var degreeInF: UILabel!
    
    private let degreeColor = UIColor(red: 0.882, green: 0.345, blue: 0.161, alpha: 1.0)
    
    override func loadView() {
        let viewTemp = UIView()
        view = viewTemp
    }
    
    override func viewDidLoad() {
        let backgroundColor = UIColor(red: 0.961, green: 0.957, blue: 0.980, alpha: 1.0)
        view.backgroundColor = backgroundColor
        setupDegree()
    }
    
    private func setupDegree() {
        degreeInF = UILabel()
        degreeInF.text = "212"
        setup(degreenLabel: degreeInF, withFontSize: 70.0)
        view.addSubview(degreeInF)
        
        let degreeInFXCenterConstratint = degreeInF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let degreeInFTopConstraint = degreeInF.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0)
        
        
        let degreeUnitF = UILabel()
        degreeUnitF.text = "degress Fahrenheit"
        setup(degreenLabel: degreeUnitF, withFontSize: 36.0)
        view.addSubview(degreeUnitF)
        
        let degreeUnitFXCenterConstratint = degreeUnitF.centerXAnchor.constraint(equalTo: degreeInF.centerXAnchor)
        let degreeUnitFTopConstratint = degreeUnitF.topAnchor.constraint(equalTo: degreeInF.bottomAnchor, constant: 8.0)
        
        let isReally = UILabel()
        isReally.textColor = UIColor()
        
        
        NSLayoutConstraint.activate([degreeInFXCenterConstratint, degreeInFTopConstraint,
                                     degreeUnitFXCenterConstratint, degreeUnitFTopConstratint])
    }
    
    private func setup(degreenLabel: UILabel, withFontSize fontsie: CGFloat) {
        degreenLabel.textColor = degreeColor
        degreenLabel.font = degreeInF.font.withSize(fontsie)
        degreenLabel.translatesAutoresizingMaskIntoConstraints = false
    }
}
