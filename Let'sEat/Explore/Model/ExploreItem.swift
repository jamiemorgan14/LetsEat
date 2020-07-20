//
//  ExploreItem.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/19/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    // takes a dictionary as argument, where the keys of the dictionary are String type and the values are Any type
    init(dict: [String: AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
