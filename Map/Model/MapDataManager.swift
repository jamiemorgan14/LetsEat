//
//  MapDataManager.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/20/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import Foundation

class MapDataManager: DataManager {
    fileprivate var items: [RestaurantItem] = []
    
    var annotations: [RestaurantItem] {
        return items
    }
    
    func fetch(completion: (_ annotations:[RestaurantItem]) -> ()) {
        if items.count > 0 {
            items.removeAll()
        }
        for data in load(file: "MapLocations") {
            items.append(RestaurantItem(dict: data))
        }
        completion(items)
    }
}
