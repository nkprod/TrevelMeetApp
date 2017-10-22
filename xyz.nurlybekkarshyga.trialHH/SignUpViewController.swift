//
//  SignUpViewController.swift
//  xyz.nurlybekkarshyga.trialHH
//
//  Created by Nulrybek Karshyga on 21.10.17.
//  Copyright © 2017 Nulrybek Karshyga. All rights reserved.
//

import UIKit
import Foundation
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!

    @IBAction func SignUpPressed(_ sender: UIButton) {
        if PasswordTextField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Enter email and password", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            
            present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: PasswordTextField.text!, completion: { (user, error) in
                if error == nil {
                    print("You successfully signed up")
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(vc!, animated: true, completion: nil)
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(alertAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            })
            
            
        }
    }
    

}


