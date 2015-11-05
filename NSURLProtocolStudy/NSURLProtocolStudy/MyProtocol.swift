//
//  MyProtocol.swift
//  NSURLProtocolStudy
//
//  Created by Yohei Okubo on 11/5/15.
//  Copyright © 2015 Yohei Okubo. All rights reserved.
//

import Foundation

class MyProtocol: NSURLProtocol {

    override class func canInitWithRequest(request: NSURLRequest) -> Bool {
        let host = request.URL?.host
        print(host)
       if host == nil {
            return false
        }
        return true
    }

    override class func canonicalRequestForRequest (request: NSURLRequest) -> NSURLRequest {
        return request;
    }

    override func startLoading() {
        let str = "this is exactly google.com"
        let data = NSData(data: str.dataUsingEncoding(NSUTF8StringEncoding)!)
        print(self.request)

        let response = NSURLResponse(URL: self.request.URL!,
            MIMEType: nil,
            expectedContentLength: 0,
            textEncodingName: nil)
        self.client?.URLProtocol(self,
            didReceiveResponse: response,
            cacheStoragePolicy: NSURLCacheStoragePolicy.NotAllowed)
        self.client?.URLProtocol(self, didLoadData: data)
        self.client?.URLProtocolDidFinishLoading(self)
    }

    override func stopLoading() {}

}