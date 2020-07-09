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
    
    var estimateWidth = 160.0
    var cellMarginSize = 16.0
    
    @IBOutlet weak var collectionAds: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello Dashboard controller!")
        
        // Set Delegates
        self.collectionAds.delegate = self
        self.collectionAds.dataSource = self
        
        
        //register cells
        self.collectionAds.register(UINib(nibName: "ItemCell", bundle: nil), forCellWithReuseIdentifier: "ItemCell")
    
        //SetupGrid View
        
    }
    func  setupGrid(<#parameters#>) -> <#return type#> {
        <#function body#>
    }
}

extension DashboardController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.setData(text: self.dataArray[indexPath.row])
        return cell
    }
}

extension DashboardController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.calculateWidth()
        return CGSize(width: width, height: width)
    }
    
    func calculateWidth() -> CGFloat {
        let estimatedWidth = CGFloat(estimateWidth)
        let cellCount = floor(CGFloat(self.view.frame.size.width / estimatedWidth))
        let margin = CGFloat(cellMarginSize * 2)
        let width = (self.view.frame.width - CGFloat(cellMarginSize) * (cellCount - 1) - margin) / cellCount
        return width
    }
}
