//
//  GuitarListViewController.swift
//  GuitarLoft
//
//  Created by Brandon Lancaster on 9/23/16.
//  Copyright © 2016 Ameren. All rights reserved.
//

import UIKit

class GuitarListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var collectionView: UICollectionView!
    var dataStore = Datastore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .Vertical
        layout.itemSize = CGSize(width: view.frame.width / 1 - 20, height: view.frame.width / 1 - 10)
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(GuitarCell.self, forCellWithReuseIdentifier: "GuitarCell")
        collectionView.backgroundColor = UIColor.whiteColor()
//        collectionView.alpha = 0.5
        self.view.addSubview(collectionView)
        
        
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return dataStore.guitars.count
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[0].image {
            
            navigationController?.pushViewController(GibsonViewController(dataStore: dataStore), animated: true)
        }
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[1].image {
            navigationController?.pushViewController(FenderViewController(), animated: true)
        }
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[2].image {
            navigationController?.pushViewController(PRSViewController(), animated: true)
        }
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[3].image {
            navigationController?.pushViewController(JacksonViewController(), animated: true)
        }
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[4].image {
            navigationController?.pushViewController(EpiphoneViewController(), animated: true)
        }
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[5].image {
            navigationController?.pushViewController(IbanezViewController(), animated: true)
        }
        
        if dataStore.guitars[indexPath.row].image == dataStore.guitars[6].image {
            navigationController?.pushViewController(SchecterViewController(), animated: true)
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("GuitarCell", forIndexPath: indexPath) as! GuitarCell
        cell.configureWithGuitar(dataStore.guitars[indexPath.row])
        cell.configureGuitarBrand(dataStore.brands[indexPath.row])
        return cell
        
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 4
    }
    
}
