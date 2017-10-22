//
//  FlightPassengersTableViewCell.swift
//  Travel Meetup
//
//  Created by Xavi Loinaz on 10/21/17.
//  Copyright © 2017 Xavi Loinaz. All rights reserved.
//

import UIKit

class FlightPassengersTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var passengerName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

