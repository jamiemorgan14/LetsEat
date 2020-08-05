//
//  FilterManager.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 8/5/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import Foundation

class FilterManager: DataManager {
    func fetch(completionHandler: (_ items: [FilterItem]) -> Swift.Void) {
        var items: [FilterItem] = []
        for data in load(file: "FilterData") {
            items.append(FilterItem(dict: data))
        }
        completionHandler(items)
    }
}
