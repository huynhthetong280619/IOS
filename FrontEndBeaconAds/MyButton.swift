//
//  MyButton.swift
//  FrontEndBeaconAds
//
//  Created by cntt35 on 6/18/20.
//  Copyright © 2020 cntt35. All rights reserved.
//
import LGButton

public class MyNewButton: LGButton {
 
    public override func awakeFromNib() {
        super.awakeFromNib()
 
        //TODO: Code for our button
        let color = UIColor.red
        
        let bthWidth = 200
        let btnHeight = 60
        self.frame.size = CGSize(width: bthWidth, height: btnHeight)
        self.frame.origin = CGPoint(x: (((superview?.frame.width)! / 2) - (self.frame.width / 2)), y: self.frame.origin.y)
    
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        self.layer.borderWidth = 3.0
        self.layer.borderColor = color.cgColor
    }
}
