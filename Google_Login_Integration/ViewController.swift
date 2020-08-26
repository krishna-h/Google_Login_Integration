//
//  ViewController.swift
//  Google_Login_Integration
//
//  Created by Mac on 26/08/20.
//  Copyright © 2020 Gunde Ramakrishna Goud. All rights reserved.
//

import UIKit
import Google
import GoogleSignIn

class ViewController: UIViewController,GIDSignInUIDelegate {
    
    override func viewDidLoad() {
           super.viewDidLoad()
           //Add sign in button
           let signInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
                  signInButton.center = view.center
                  view.addSubview(signInButton)
           //Add sign Out button
           let signOut = UIButton(frame: CGRect(x: 110, y: 100, width: 190, height: 50))
           signOut.backgroundColor = UIColor.red
           signOut.setTitle("Sign Out", for: .normal)
           signOut.center.y = view.center.y + 100
           signOut.addTarget(self, action: #selector(signOut(_:)), for: .touchUpInside)
           self.view.addSubview(signOut)
       
           GIDSignIn.sharedInstance()?.uiDelegate = self
           GIDSignIn.sharedInstance()?.signInSilently()
          
       }
       @objc func signOut(_ sender: UIButton){
           print("User Sign Out")
           GIDSignIn.sharedInstance()?.signOut()
       }



}

