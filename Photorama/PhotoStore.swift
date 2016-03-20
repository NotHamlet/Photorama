//
//  PhotoStore.swift
//  Photorama
//
//  Created by Stephen Atwood on 3/20/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation

class PhotoStore {
    
    let session: NSURLSession = {
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        return NSURLSession(configuration: config)
    }()

    func fetchRecentPhotos() {
        let url = FlickerAPI.recentPhotosURL()
        let request = NSURLRequest(URL: url)
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            if let jsonData = data {
                if let jsonString = NSString(data: jsonData, encoding: NSUTF8StringEncoding) {
                    print(jsonString)
                }
            }
            else if let requestError = error {
                print("Error fetching recent Photos: \(requestError)")
            }
            else {
                print("Unexpected error with request")
            }
            
        }
        
        task.resume()
    }
}
