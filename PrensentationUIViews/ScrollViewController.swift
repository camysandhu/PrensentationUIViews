//
//  ScrollViewController.swift
//  PrensentationUIViews
//
//  Created by simar mahi on 02/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController
{

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        scrollView.contentSize.height=1000
    }
    override func didReceiveMemoryWarning()
    {

    super.didReceiveMemoryWarning()
        
//               self.scrollView.dataSource = self
//               self.scrollView.delegate = self
    }
    }
