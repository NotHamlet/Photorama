//
//  Photo.swift
//  Photorama
//
//  Created by Stephen Atwood on 3/20/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class Photo {
    
    // MARK: Properties
    
    let title: String
    let remoteURL: NSURL
    let photoID: String
    let dateTaken: NSDate
    var image: UIImage?
    
    
    // MARK: Constructors
    
    init(title: String, remoteURL: NSURL, photoID: String, dateTaken: NSDate) {
        self.title = title;
        self.remoteURL = remoteURL
        self.photoID = photoID
        self.dateTaken = dateTaken
    }
}


// MARK: Extension: Photo: Equatable

extension Photo: Equatable {}

func == (lhs: Photo, rhs: Photo) -> Bool {
    // Two photos are the same if they have the same photoID
    return lhs.photoID == rhs.photoID
}
