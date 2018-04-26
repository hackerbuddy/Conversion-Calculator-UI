//
//  ConverterViewController.swift
//  ConversionCalculatorUI
//
//  Created by boborama on 4/25/18.
//  Copyright © 2018 hackerbuddy. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var conversion:[Converter] = [Converter]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversion.append(Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"))
        conversion.append(Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"))
        conversion.append(Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"))
        conversion.append(Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi"))
        
        self.inputDisplay.text = conversion[0].inputUnit
        self.outputDisplay.text = conversion[0].outputUnit
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertAction(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Choose Converter", preferredStyle: UIAlertControllerStyle.actionSheet)
        for converter in conversion{
        alert.addAction(UIAlertAction(title: converter.label, style: UIAlertActionStyle.default, handler:{
            (alertAction) -> Void in
            //handle first option
            self.inputDisplay.text = converter.inputUnit
            self.outputDisplay.text = converter.outputUnit
            
        }))
        }
        self.present(alert, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
