//
//  LoginController.swift
//  FrontEndBeaconAds
//
//  Created by cntt35 on 6/18/20.
//  Copyright © 2020 cntt35. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var txtFieldUsername: UITextField!
    @IBOutlet weak var txtFieldPwd: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        print("Hello Login controller!")
        
        //Take to fix corner radius button
        fixCornerRadiusButton(btnSignIn)
        fixCornerRadiusTextField(txtFieldUsername)
        fixCornerRadiusTextField(txtFieldPwd)
    }
    
    
    @IBAction func signInFacebook(_ sender: Any) {
        print("Login with Facebook");
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "Dashboard") ; // MySecondSecreen the storyboard ID
        vc.modalPresentationStyle = .fullScreen;
        self.present(vc, animated: true, completion: nil);
    }
    //@Action: Login with account Google
    @IBAction func signInGoogle(_ sender: Any) {
        print("Login with Google");
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "Dashboard") ; // MySecondSecreen the storyboard ID
        vc.modalPresentationStyle = .fullScreen;
        self.present(vc, animated: true, completion: nil);

    }
    
    //@Action: Forget password
    @IBAction func forgetPwd(_ sender: Any) {
        print("Forget password");
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "Dashboard") ; // MySecondSecreen the storyboard ID
        vc.modalPresentationStyle = .fullScreen;
        self.present(vc, animated: true, completion: nil);

    }
    //@Action: set radius button
    private func fixCornerRadiusButton(_ button: UIButton){
        button.layer.cornerRadius = 32
    }
    //@Action: set radius text field
    private func fixCornerRadiusTextField(_ textField: UITextField){
        textField.layer.cornerRadius = 15.0
        textField.layer.borderWidth = 2.0
        textField.layer.borderColor = UIColor.red.cgColor
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        
    }
}

