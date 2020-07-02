//
//  DashboardController.swift
//  FrontEndBeaconAds
//
//  Created by cntt35 on 6/18/20.
//  Copyright © 2020 cntt35. All rights reserved.
//

import UIKit

class DashboardController: UIViewController, UICollectionViewDelegate {

    let dataArray = ["A", "B", "C", "D"]
    
    @IBOutlet weak var collectionAds: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello Dashboard controller!")
        
        //Set delegate
        self.collectionAds.delegate = self
        self.collectionAds.dataSource = self
        
        self.collectionAds.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
    }
    
}

extension DashboardController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.counts
    }
    
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        <#code#>
    }
}
