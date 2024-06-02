//
//  ViewController.swift
//  RGBViewV2.2024
//
//  Created by Marat Fakhrizhanov on 03.06.2024.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueViewLabel: UILabel!
    
   
    @IBOutlet var redSliderValue: UISlider!
    @IBOutlet var greenSliderValue: UISlider!
    @IBOutlet var blueSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbView.backgroundColor = .black
       
        redSliderValue.minimumValue = 0
        redSliderValue.maximumValue = 1
        greenSliderValue.minimumValue = 0
        greenSliderValue.maximumValue = 1
        blueSliderValue.minimumValue = 0
        blueSliderValue.maximumValue = 1
        
        redSliderValue.thumbTintColor = .red
        greenSliderValue.thumbTintColor = .green
        blueSliderValue.thumbTintColor = .blue
        
        redValueLabel.text = ""
        greenValueLabel.text = ""
        blueViewLabel.text = ""
  
    }

    
    @IBAction func changeTheValueSliders() {
        
        redValueLabel.text = String(redSliderValue.value)
        greenValueLabel.text = String(greenSliderValue.value)
        blueViewLabel.text = String(blueSliderValue.value)
        
        rgbView.backgroundColor = UIColor(_colorLiteralRed: redSliderValue.value, green: greenSliderValue.value, blue: blueSliderValue.value, alpha: 1)
    }


}

