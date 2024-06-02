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
        
        if redSliderValue.value == 1 && greenSliderValue.value == 1 && blueSliderValue.value == 1 {
            showAlert(with: "White Color", and: "Plese, dont touch slireds")
        }
        
        redValueLabel.text = String(round(redSliderValue.value * 100) / 100)
        greenValueLabel.text = String(round(greenSliderValue.value * 100) / 100)
        blueViewLabel.text = String(round(blueSliderValue.value * 100) / 100)
        
        rgbView.backgroundColor = UIColor(_colorLiteralRed: redSliderValue.value, green: greenSliderValue.value, blue: blueSliderValue.value, alpha: 1)
    }


}

extension ViewController {
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default){_ in self.greenSliderValue.value = 0
    }
        alert.addAction(okAction)
        present(alert, animated: true)
}
    }
    
