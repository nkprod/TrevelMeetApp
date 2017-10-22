//
//  PassengerProfileViewController.swift
//  Travel Meetup
//
//  Created by Xavi Loinaz on 10/21/17.
//  Copyright © 2017 Xavi Loinaz. All rights reserved.
//

import UIKit

class PassengerProfileViewController: UIViewController {
    
    
    var passenger : Passenger = Passenger(name: "", gender: "", age: 0, bio: "", purposeOfTrip: "", lookingFor: "")
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var purposeOfVisitLabel: UILabel!
    @IBOutlet weak var lookingForLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        nameLabel.text = passenger.name
        ageLabel.text = String(passenger.age)
        genderLabel.text = passenger.gender
        bioLabel.text = passenger.bio
        purposeOfVisitLabel.text = passenger.purposeOfTrip
        lookingForLabel.text = passenger.lookingFor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

