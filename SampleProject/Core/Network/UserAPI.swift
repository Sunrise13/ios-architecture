//
//  UserAPI.swift
//  SampleProject
//
//  Created by Alex Kunitsa on 9/16/15.
//  Copyright (c) 2015 Techmagic. All rights reserved.
//

import Foundation

class UserAPI: CoreAPI {
    
    func receiveUser(userId: String, completionHandler:(user: User?)->()) {
        let urlString = "todo"
        generateGETrequest(urlString, responseReady: { (data, statusCode, success, error) -> () in
            // todo  
            // - Check if success
            // - Parse responce
            // - Create user from responce
            
            completionHandler(user: nil)
        })
    }
}