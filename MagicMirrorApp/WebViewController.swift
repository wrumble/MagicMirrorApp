//
//  ViewController.swift
//  MagicMirrorApp
//
//  Created by Wayne Rumble on 31/12/2016.
//  Copyright © 2016 Wayne Rumble. All rights reserved.
//

import Foundation
import WebKit
import UIKit

class WebViewController: UIViewController {
    
    var webView = WKWebView()
    
    override func loadView() {
        
        super.loadView()
        self.view = webView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://192.168.0.40:8080/remote.html")
        let req = NSURLRequest(url: url! as URL)
        self.webView.load(req as URLRequest)
    }
    
}

