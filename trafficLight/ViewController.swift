//
//  ViewController.swift
//  trafficLight
//
//  Created by Анастасия Ступникова on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lightViews: [UIView] = [
            redLightView,
            yellowLightView,
            greenLightView
        ]
        
        for view in lightViews {
            view.alpha = 0.3
            view.layer.cornerRadius = view.frame.height / 2
        }
        
        button.setTitle("START!", for: .normal)
        
    }

    @IBAction func onButtonTap() {
        
        if button.currentTitle == "START!" {
            button.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
        
    }
    
}


