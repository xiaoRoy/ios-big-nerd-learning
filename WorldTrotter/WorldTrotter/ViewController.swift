//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Jerry Li on 2021/6/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillLayoutSubviews() {
        let grdiantLayer = CAGradientLayer()
        grdiantLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor]
        grdiantLayer.frame.size = view.frame.size
        view.layer.insertSublayer(grdiantLayer, at: 0)
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


}

