//
//  ExploreDataManager.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/19/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import Foundation

class ExploreDataManager {
    
    fileprivate var items: [ExploreItem] = []
    
    func fetch() {
        for data in loadData() {
            items.append(ExploreItem(dict: data))
        }
    }
    
    // fileprivate means means method may only be used in this class
    fileprivate func loadData() -> [[String: AnyObject]] {
        // guard statement attempts to perform two statements, declaring the path and items constants
        //if either is unsuccessful, the else block returns an empty array of dicts
        // Bundle is the resulting folder of a build, Explore.plist is inside this bundle.
        // Bundle.main.path(//@ExploreData.plist)
        // let items = ... tries to create an array from the contets of the exploreData.plist file and assign to items
        guard let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"),
            let items = NSArray(contentsOfFile: path)
            else {
                return [[:]]
        }
        return items as! [[String: AnyObject]]
    }
}
