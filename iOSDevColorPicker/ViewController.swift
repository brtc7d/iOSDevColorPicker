//
//  ViewController.swift
//  iOSDevColorPicker
//
//  Created by Ben on 10/5/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

struct ColorStruct {
    var name: String
    var UIColor: UIColor
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row].UIColor
        self.colorLabel.text = colors[row].name
    }
    

    @IBOutlet weak var colorPicker: UIPickerView!
    var colors = [ColorStruct]()
    var initialColorIndex = 0
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.colorPicker.delegate = self
        self.colorPicker.dataSource = self
        
        colors = [ColorStruct(name: "Red", UIColor: UIColor.red), ColorStruct(name: "Orange", UIColor: UIColor.orange), ColorStruct(name: "Yellow", UIColor: UIColor.yellow), ColorStruct(name: "Green", UIColor: UIColor.green), ColorStruct(name: "Blue", UIColor: UIColor.blue), ColorStruct(name: "Purple", UIColor: UIColor.purple)]
        
        
        self.view.backgroundColor = colors[initialColorIndex].UIColor
        self.colorLabel.text = colors[initialColorIndex].name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

