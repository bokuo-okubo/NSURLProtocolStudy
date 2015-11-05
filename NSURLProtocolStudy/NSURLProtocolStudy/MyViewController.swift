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
        let path = self.setupBundleFilePath()

        // Protocolに使うクラスの指定
        NSURLProtocol.registerClass(MyProtocol)
        

        webView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath: path))) // TODO　: リソースが取得できなかった時のエラーハンドリング
        self.view.addSubview(webView)
    }

    private func setupBundleFilePath() -> String {
        let path : String = NSBundle.mainBundle().pathForResource("index", ofType: "html", inDirectory: "assets")!
        return path
    }
}

