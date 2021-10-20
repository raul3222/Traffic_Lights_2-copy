//
//  ViewController.swift
//  Traffic_Lights_2
//
//  Created by Raul Shafigin on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidAppear(_ animated: Bool)  {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStart.layer.cornerRadius = 10
       
    }
    
   

    @IBAction func buttonStartPressed() {
        buttonStart.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha < 1 && yellowLightView.alpha != 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if yellowLightView.alpha < 1 && greenLightView.alpha != 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
        } else {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        }
    }
    
}




