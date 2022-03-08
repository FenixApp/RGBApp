//
//  ViewController.swift
//  RGBApp
//
//  Created by Dmitriy Starozhilov on 06.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var areaColors: UIView!
    
    @IBOutlet var valueRedSlider: UILabel!
    @IBOutlet var valueGreenSlider: UILabel!
    @IBOutlet var valueBlueSlider: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        areaColors.layer.cornerRadius = 15
        
        areaColors.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
        valueRedSlider.text = String(format: "%.2f", redSlider.value)
        valueGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueBlueSlider.text = String(format: "%.2f", blueSlider.value)
        
    }
    
    @IBAction func actionSliderRGB() {
        areaColors.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
        valueRedSlider.text = String(format: "%.2f", redSlider.value)
        valueGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueBlueSlider.text = String(format: "%.2f", blueSlider.value)
    }
}
