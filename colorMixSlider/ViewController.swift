//
//  ViewController.swift
//  colorMixSlider
//
//  Created by Ruslan Bihun on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenlabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTF: UITextField!
    @IBOutlet var greenTF: UITextField!
    @IBOutlet var blueTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup Slider
        redSlider.value = 0
        redSlider.minimumTrackTintColor = .red
        let redSliderValue = round(100 * redSlider.value) / 100
        
        //Setup label
        redLabel.text = String(redSliderValue)
        
        //Setup text fild
        redTF.text = String(redSliderValue)
    }

    @IBAction func redSliderAction() {
        let redValue = round(100 * redSlider.value) / 100
        let greenValue = round(100 * greenSlider.value) / 100
        let blueValue = round(100 * blueSlider.value) / 100
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        red = CGFloat(redSlider.value)
        green = CGFloat(greenSlider.value)
        blue = CGFloat(blueSlider.value)
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
        redLabel.text = String(redValue)
        redTF.text = String(redValue)
        greenlabel.text = String(greenValue)
        greenTF.text = String(greenValue)
        blueLabel.text = String(blueValue)
        blueTF.text = String(blueValue)
    }
    
    @IBAction func redTFAction() {
        
    }
    
    
}

