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

        let frameSizeRect = UIScreen.mainScreen().bounds
        let webView = UIWebView.init(frame: frameSizeRect)

        // ローカルのファイルのフルパスを取得する
        let path : String = NSBundle.mainBundle().pathForResource("index", ofType: "html", inDirectory: "assets")!
        webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: path))) // TODO　: リソースが取得できなかった時のエラーハンドリング
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

