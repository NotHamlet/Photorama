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
    
    @IBOutlet var collectionView: UICollectionView!
    
    var store: PhotoStore!
    let photoDataSource = PhotoDataSource()
    
    // MARK: UIViewController methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = photoDataSource
        
        store.fetchRecentPhotos() {
            (photosResult) -> Void in
            
            NSOperationQueue.mainQueue().addOperationWithBlock() {
                switch photosResult {
                case let .Success(photos):
                    print("Successfully found \(photos.count) photos.")
                    self.photoDataSource.photos = photos
                case let .Failure(error):
                    self.photoDataSource.photos.removeAll()
                    print("Error fetching recent photos: \(error)")
                }
                self.collectionView.reloadSections(NSIndexSet(index: 0))
            }
        }
    }
    
}
