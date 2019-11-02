//
//  PickerViewController.swift
//  PrensentationUIViews
//
//  Created by simar mahi on 02/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
        
    }
    
    var iphoneList = ["---Select---", "Iphone8", "Iphone8Plus", "IphoneX", "IphoneXPro", "Iphone8XProMax", "Iphone11" , "Iphone11pro", "Iphone11ProMax", "Iphone12"]

    var sizeList: [String]!
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad()
    {
            super.viewDidLoad()
           self.pickerView.dataSource = self
           self.pickerView.delegate = self
        }
    
    
    
        
    override func didReceiveMemoryWarning() {

    super.didReceiveMemoryWarning()

    

    }

    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {

    return 2

    }
 

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

    if component == 0 {

    return  self.iphoneList.count

    }

    return 0

    }

    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

    if component == 0 {

    return self.iphoneList[row]

    }

    if component == 1 {

    return  self.sizeList[row]

    }

    return "Invalid Row"

    }

    

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

    if component == 0 {

    

    if row == 0 {

    self.colorLabel.text = "--"

    }else{

    self.colorLabel.text = self.iphoneList[row]

    }

    }

    }

    }

    
