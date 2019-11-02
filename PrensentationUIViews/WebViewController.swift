//
//  WebViewController.swift
//  PrensentationUIViews
//
//  Created by simar mahi on 02/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    
   
    //referred from Sir's Example
    @IBOutlet weak var webKitView: WKWebView!
    override func viewDidLoad() {
            super.viewDidLoad()
            
            webKitView.navigationDelegate = self as? WKNavigationDelegate
            webKitView.allowsBackForwardNavigationGestures = true
            
            //self.loadFromString()
            self.loadFromUrl()
            //self.loadFromFile()
            
        }
        
        //
        func loadFromString()
        {
            let htmlStr = """
                                <h1>Hello World</h1>
                                <h2>Hello World</h2>
                                <h3>Hello World</h3>
                                <h4>Hello World</h4>
                                <h5>Hello World</h5>
                                <h6>Hello World</h6>
                          """
            webKitView.loadHTMLString(htmlStr, baseURL: nil)
        }
        
        func loadFromFile()
        {
            let localfilePath = Bundle.main.url(forResource: "home", withExtension: "html")
            let myRequest = URLRequest(url: localfilePath!)
         webKitView.load(myRequest)
            //myWebKitView.loadFileURL(<#T##URL: URL##URL#>, allowingReadAccessTo: <#T##URL#>)
            
        }
        
        func loadFromUrl()
        {
            //let url = URL(string: "https://www.youtube.com/watch?v=xQmZSKxOYvs")
            let url = URL(string: "https://www.lambtoncollege.ca/")
            //let url = URL(string: "https://www.google.com")
            let urlReq = URLRequest(url: url!)
            webKitView.load(urlReq)
        }

        @IBAction func webBrowserAction(_ sender: UIBarButtonItem)
        {
            switch sender.tag {
            case 0:
                //myWebKitView.go(to: myWebKitView.backForwardList.item(at: 0)!)
                webKitView.reloadFromOrigin()
            case 1:
                //myWebKitView.go(to: myWebKitView.backForwardList.forwardItem!)
                if webKitView.canGoForward
                {
                    webKitView.goForward()
                }
                
            case 2:
                //myWebKitView.go(to: myWebKitView.backForwardList.backItem!)
                webKitView.goBack()
            case 3:
                webKitView.reload()
            default:
                print("NO Action")
            }
        }
    }
