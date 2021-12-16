//
//  SecondConversionViewController.swift
//  WorldTrotter
//
//  Created by jerli on 2021/12/8.
//

import UIKit

class SecondConversionViewController: UIViewController {
    
    private var degreeInF: UITextField!
    
    private var degreeInC: UILabel!
    
    private static let unknownDegreeInC = "???"
    
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
    
    private func setupDegreeInFTextField() {
        degreeInF = UITextField()
        degreeInF.placeholder = "value"
        degreeInF.textColor = degreeColor
        degreeInF.font = degreeInF.font?.withSize(70.0)
        degreeInF.adjustsFontSizeToFitWidth = true
        degreeInF.borderStyle = .none
        degreeInF.translatesAutoresizingMaskIntoConstraints = false
        
        degreeInF.autocorrectionType = .no
        degreeInF.spellCheckingType = .no
        degreeInF.keyboardType = .decimalPad
        
        degreeInF.addTarget(self, action: #selector(degreeInFChanged(_:)), for: UIControl.Event.editingChanged)
        view.addSubview(degreeInF)
    }
    
    @objc
    private func degreeInFChanged(_ sender:UITextField) {
        if let currentDegree = sender.text, !currentDegree.isEmpty {
            degreeInC.text = currentDegree
        } else {
            degreeInC.text = SecondConversionViewController.unknownDegreeInC
        }
    }
    
    private func setupDegree() {
        setupDegreeInFTextField()
        
        let degreeInFXCenterConstratint = degreeInF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let degreeInFTopConstraint = degreeInF.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8.0)
        
        
        let degreeUnitF = UILabel()
        degreeUnitF.text = "degrees Fahrenheit"
        setup(degreenLabel: degreeUnitF, withFontSize: 36.0)
        view.addSubview(degreeUnitF)
        
        let degreeUnitFXCenterConstratint = degreeUnitF.centerXAnchor.constraint(equalTo: degreeInF.centerXAnchor)
        let degreeUnitFTopConstratint = degreeUnitF.topAnchor.constraint(equalTo: degreeInF.bottomAnchor, constant: 8.0)
        
        
        let isReally = UILabel()
        isReally.text = "is really"
        isReally.font = isReally.font.withSize(36.0)
        isReally.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(isReally)
        
        let isReallyXCenterConstraint = isReally.centerXAnchor.constraint(equalTo: degreeUnitF.centerXAnchor)
        let isReaalyTopConstratint = isReally.topAnchor.constraint(equalTo: degreeUnitF.bottomAnchor, constant: 8.0)
        
        
        degreeInC = UILabel()
        degreeInC.text = SecondConversionViewController.unknownDegreeInC
        setup(degreenLabel: degreeInC, withFontSize: 70.0)
        view.addSubview(degreeInC)
        
        let degreeInCXCenterConstratint = degreeInC.centerXAnchor.constraint(equalTo: degreeInF.centerXAnchor)
        let degreeInCTopConstraint = degreeInC.topAnchor.constraint(equalTo: isReally.bottomAnchor, constant: 8.0)
        
        let degreeUnitC = UILabel()
        degreeUnitC.text = "degrees Celsius"
        setup(degreenLabel: degreeUnitC, withFontSize: 36.0)
        view.addSubview(degreeUnitC)
        
        let degreeUnitDXCetnerConstratint = degreeUnitC.centerXAnchor.constraint(equalTo: degreeInF.centerXAnchor)
        let degreeUntDTopConstraint = degreeUnitC.topAnchor.constraint(equalTo: degreeInC.bottomAnchor, constant: 8.0)
        
        
        NSLayoutConstraint.activate([degreeInFXCenterConstratint, degreeInFTopConstraint,
                                     degreeUnitFXCenterConstratint, degreeUnitFTopConstratint,
                                     isReallyXCenterConstraint, isReaalyTopConstratint,
                                     degreeInCXCenterConstratint, degreeInCTopConstraint,
                                     degreeUnitDXCetnerConstratint,degreeUntDTopConstraint
                                    ])
    }
    
    private func setup(degreenLabel: UILabel, withFontSize fontsie: CGFloat) {
        degreenLabel.textColor = degreeColor
        degreenLabel.font = degreenLabel.font.withSize(fontsie)
        degreenLabel.translatesAutoresizingMaskIntoConstraints = false
    }
}
