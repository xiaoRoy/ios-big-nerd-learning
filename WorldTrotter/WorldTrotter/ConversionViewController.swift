//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Jerry Li on 2021/6/27.
//

import UIKit

class ConversionViewController: UIViewController {
    
    private static let unknownDegree: String = "???"
    
    @IBOutlet
    private var degreeInCLabel: UILabel!
    
    @IBOutlet
    private var degreeInFTextField: UITextField!
    
    private var degreeInF: Measurement<UnitTemperature>? {
        didSet {
            updateDegreeInCLabel()
        }
    }
    
    private var degreeInC: Measurement<UnitTemperature>? {
        if let degreeInF = degreeInF {
            return degreeInF.converted(to: UnitTemperature.celsius)
        } else {
            return nil
        }
    }
    
    private let numberFormatter: NumberFormatter = {
        () -> NumberFormatter in
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 1
        return numberFormatter
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
        updateDegreeInCLabel()
    }
    
    private func generateRandomColor() -> CGFloat{
        return CGFloat.random(in: 0.0...1.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let red = generateRandomColor()
        let green = generateRandomColor()
        let blue = generateRandomColor()
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    override func viewWillLayoutSubviews() {
        let grdiantLayer = CAGradientLayer()
        grdiantLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        grdiantLayer.frame.size = view.frame.size
//        view.layer.insertSublayer(grdiantLayer, at: 0)
    }
    
    private func addViews() {
        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
        let firstView = UIView(frame: firstFrame)
        firstView.backgroundColor = UIColor.blue
        view.addSubview(firstView)
        
        let secondFrame = CGRect(x:20, y:30, width: 50, height: 50)
        let secondView = UIView(frame: secondFrame)
        secondView.backgroundColor = UIColor.green
//        view.addSubview(secondView)
        firstView.addSubview(secondView)
    }
    
    private func updateDegreeInCLabel() {
        if let degreeInCTemp = degreeInC {
            degreeInCLabel.text = numberFormatter.string(from: NSNumber(value: degreeInCTemp.value))
        } else {
            degreeInCLabel.text = ConversionViewController.unknownDegree
        }
    }
    
    @IBAction
    private func degreeInFChanged(_ textField: UITextField) {
        if let currentText = textField.text, let currentValue = Double(currentText) {
            print("current:\(currentText)")
            degreeInF = Measurement(value: currentValue, unit: .fahrenheit)
        } else {
            degreeInF = nil
        }
//        if let currentText = textField.text, !currentText.isEmpty {
//            degreeInCLabel.text = textField.text
//        } else {
//            degreeInCLabel.text = ConversionViewController.unknownDegree
//        }
    }
    
    @IBAction
    private func dismisKeyboard(_ sender: UITapGestureRecognizer){
        degreeInFTextField.resignFirstResponder()
    }
    
}

