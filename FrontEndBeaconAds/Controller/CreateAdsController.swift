//
//  CreateAdsController.swift
//  FrontEndBeaconAds
//
//  Created by cntt35 on 6/18/20.
//  Copyright © 2020 cntt35. All rights reserved.
//

import UIKit

class CreateAdsController: UIViewController {

    @IBOutlet weak var btnCancelCreate: UIButton!
    @IBOutlet weak var btnDoneCreate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello CreateAds controller!")
        
        fixCornerRadiusButton(btnCancelCreate)
        fixCornerRadiusButton(btnDoneCreate)
    }
    
    //@Action: set radius button
       private func fixCornerRadiusButton(_ button: UIButton){
           button.layer.cornerRadius = 23
       }
    
}
