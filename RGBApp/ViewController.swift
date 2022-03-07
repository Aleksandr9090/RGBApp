//
//  ViewController.swift
//  RGBApp
//
//  Created by Aleksandr on 07.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var rGBView: UIView!
    
    var redColor: CGFloat = 0.5
    var greenColor: CGFloat = 0.5
    var blueColor: CGFloat = 0.5
    
    override func viewDidLoad() {
        rGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)

        rGBView.layer.cornerRadius = 20
        super.viewDidLoad()
    }
    
    @IBAction func redSliderAction() {
        redLabel.text = String(round(redSlider.value * 100) / 100)
        
        redColor =  CGFloat(redSlider.value)
        rGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        
        greenColor = CGFloat(greenSlider.value)
        rGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        
        blueColor = CGFloat(blueSlider.value)
        rGBView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
    }
    
   
    
}


