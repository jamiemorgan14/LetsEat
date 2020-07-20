//
//  ExploreViewController.swift
//  Let'sEat
//
//  Created by Jamie Morgan on 7/18/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let itemCount = manager.numberOfItems()
        return itemCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCell
        let item = manager.explore(at: indexPath)
        cell.lblname.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        return cell
    }

    @IBOutlet weak var collectionView: UICollectionView!
    let manager = ExploreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.fetch()
    }
    
    @IBAction func unwindLocationCancel(segue: UIStoryboardSegue) {
        
    }
 }
