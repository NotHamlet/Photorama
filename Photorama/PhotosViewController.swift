//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Stephen Atwood on 3/20/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    // MARK: properties
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    // MARK: UIViewController methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchRecentPhotos()
    }
    
}
