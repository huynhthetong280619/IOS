//
//  ItemCell.swift
//  FrontEndBeaconAds
//
//  Created by cntt35 on 7/2/20.
//  Copyright © 2020 cntt35. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {

    @IBOutlet weak var titleAds: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //set data
    func setData(text: String){
        self.titleAds.text = text;
    }

}
