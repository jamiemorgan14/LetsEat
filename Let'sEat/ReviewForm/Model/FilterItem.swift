//
//  FilterItem.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 8/5/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import Foundation

class FilterItem: NSObject {
    let filter: String
    let name: String
    
    init(dict: [String: AnyObject]) {
        name = dict["name"] as! String
        filter = dict["filter"] as! String
    }
}
