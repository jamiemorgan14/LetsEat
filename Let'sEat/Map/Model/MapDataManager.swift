//
//  MapDataManager.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/20/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import Foundation
import MapKit

class MapDataManager: DataManager {
    fileprivate var items: [RestaurantItem] = []
    
    var annotations: [RestaurantItem] {
        return items
    }
    
    func fetch(completion: (_ annotations:[RestaurantItem]) -> ()) {
        let manager = RestaurantDataManager()
        manager.fetch(by: "Boston", completionHandler: {(items) in
            self.items = items
            completion(items)
        })
    }
    
    func currentRegion(latDelta: CLLocationDegrees, longDelta: CLLocationDegrees) -> MKCoordinateRegion {
        guard let item = items.first else {
            return MKCoordinateRegion()
        }
        
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        return MKCoordinateRegion(center: item.coordinate, span: span)
    }
}
