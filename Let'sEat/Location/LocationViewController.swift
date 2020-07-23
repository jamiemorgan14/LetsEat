//
//  LocationViewController.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/20/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let manager = LocationDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}

// MARK: Private Extension
private extension LocationViewController {
    func initialize() {
        manager.fetch()
    }
}

// MARK: UITableViewDataSource
extension LocationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = manager.locationItem(at: indexPath)
        return cell
    }
}
