//
//  CoreAPI.swift
//  SampleProject
//
//  Created by Alex Kunitsa on 9/16/15.
//  Copyright (c) 2015 Techmagic. All rights reserved.
//

import Foundation

typealias responseReadyClosure = (data: NSData?, statusCode:Int, success: Bool, error:String?) -> ()

class CoreAPI {
    
    func generateGETrequest(urlString: String, responseReady: responseReadyClosure) -> (NSURLSessionTask) {
        return basicRequestGenerator(urlString, method: "GET", params: nil, responseReady: responseReady)
    }
    
    func generatePOSTrequest(urlString: String, params: AnyObject?, responseReady: responseReadyClosure) -> (NSURLSessionTask) {
        return basicRequestGenerator(urlString, method: "POST", params: params, responseReady: responseReady)
    }
    
    func generatePUTrequest(urlString: String, params: AnyObject?, responseReady: responseReadyClosure) -> (NSURLSessionTask) {
        return basicRequestGenerator(urlString, method: "PUT", params: params, responseReady: responseReady)
    }
    
    func generateDELETErequest(urlString: String, params: AnyObject?, responseReady: responseReadyClosure) -> (NSURLSessionTask) {
        return basicRequestGenerator(urlString, method: "DELETE", params: params, responseReady: responseReady)
    }
    
    // MARK: - Private
    
    private func basicRequestGenerator(urlString: String, method: String, params: AnyObject?, responseReady: responseReadyClosure) -> (NSURLSessionTask) {
        
        // todo 
        // ...
        
        return NSURLSessionTask()
    }
}