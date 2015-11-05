//
//  ViewController.swift
//  NSURLProtocolStudy
//
//  Created by Yohei Okubo on 11/5/15.
//  Copyright © 2015 Yohei Okubo. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("hogehoge")

        let frameSizeRect = UIScreen.mainScreen().applicationFrame
        let webView = UIWebView.init(frame: frameSizeRect)
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.google.co.jp")!))
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

