//
//  TextViewController.swift
//  PrensentationUIViews
//
//  Created by simar mahi on 02/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class TextViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var labelText: UILabel!
    @IBAction func doneButtonAction(_ sender: UIButton) {
    
    self.textView.resignFirstResponder()

    labelText.text = textView.text

    }

    override func viewDidLoad() {

    super.viewDidLoad()

    self.textView.delegate = self

    }

    override func didReceiveMemoryWarning() {

    super.didReceiveMemoryWarning()

    // Dispose of any resources that can be recreated.

    }

    }

    
