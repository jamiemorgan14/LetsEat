//
//  RestaurantDetailViewController.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/21/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UITableViewController {
    
    var selectedRestaurant: RestaurantItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dump(selectedRestaurant as Any)
    }
}
