//
//  ReviewDataManager.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 8/17/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import UIKit

class ReviewDataManager: NSObject {
    private var reviewItems: [ReviewItem] = []
    private var photoItems: [RestaurantPhotoItem] = []
    
    let manager = CoreDataManager()
    
    func fetchReview(by restaurantID: Int) {
        if reviewItems.count > 0 {
            reviewItems.removeAll()
        }
        for data in manager.fetchReview(by: restaurantID) {
            reviewItems.append(data)
        }
    }
    
    func fetchPhoto(by restaurantID: Int) {
        if photoItems.count > 0 {
            photoItems.removeAll()
        }
        for data in manager.fetchPhotos(by: restaurantID) {
            photoItems.append(data)
        }
    }
    
    func numberOfReview() -> Int {
        return reviewItems.count
    }
    
    func numberOfPhotos() -> Int {
        return photoItems.count
    }
    
    func reviewItem(at index: IndexPath) -> ReviewItem {
        return reviewItems[index.item]
    }
    
    func photoItem(at index: IndexPath) -> RestaurantPhotoItem {
        return photoItems[index.item]
    }
}
