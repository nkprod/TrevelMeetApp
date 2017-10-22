//
//  ViewController.swift
//  xyz.nurlybekkarshyga.trialHH
//
//  Created by Nulrybek Karshyga on 21.10.17.
//  Copyright © 2017 Nulrybek Karshyga. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func LoginPressed(_ sender: UIButton) {
        if emailTextField.text == "" || passwordTextField.text == ""{
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            
            self.present(alertController, animated: true, completion: nil)
        } else{
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
                if error == nil{
                    print("You have successfully loged in")
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Flight")
                    self.present(vc!, animated: true, completion: nil)
                } else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(alertAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                }
            })
            
        }
    }
    @IBOutlet weak var SignUpPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

