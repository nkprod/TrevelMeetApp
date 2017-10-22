//
//  Passenger.swift
//  Travel Meetup
//
//  Created by Xavi Loinaz on 10/21/17.
//  Copyright © 2017 Xavi Loinaz. All rights reserved.
//

import UIKit

class Passenger {
    
    let name : String
    let gender : String
    let age : Int
    let bio : String
    let purposeOfTrip : String
    let lookingFor : String
    
    
    
    init(name: String, gender: String, age: Int, bio: String, purposeOfTrip: String, lookingFor: String) {
        self.name = name
        self.gender = gender
        self.age = age
        self.bio = bio
        self.purposeOfTrip = purposeOfTrip
        self.lookingFor = lookingFor
    }
    
    
    
}



