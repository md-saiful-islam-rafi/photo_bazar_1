//
//  ViewController.swift
//  Photo_Bazar_1
//
//  Created by Md. Saiful Islam on 26/1/20.
//  Copyright © 2020 Md. Saiful Islam. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    
    @IBOutlet weak var user_name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var confirm_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func submit(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                print("Successfully added")
            }
        }
        
        
    }
}

