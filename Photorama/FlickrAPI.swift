//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Stephen Atwood on 3/20/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import Foundation

enum Method: String {
    case RecentPhotos = "flickr.photos.getRecent"
}

struct FlickerAPI {
    
    private static let baseURLString = "​h​t​t​p​s​:​/​/​a​p​i​.​f​l​i​c​k​r​.​c​o​m​/​s​e​r​v​i​c​e​s​/​r​e​s​t"
    
    static func recentPhotosURL() -> NSURL {
        return flickrURL(method: .RecentPhotos, parameters: ["extras": "url_h, date_taken"])
    }
    
    private static func flickrURL(method method: Method, parameters: [String:String]?) -> NSURL {
        return NSURL()
    }
    
    
}