//
//  FlightPassengersTableViewController.swift
//  Travel Meetup
//
//  Created by Xavi Loinaz on 10/21/17.
//  Copyright © 2017 Xavi Loinaz. All rights reserved.
//

import UIKit

class FlightPassengersTableViewController: UITableViewController {
    
    var flightPassengers : [Passenger] = [Passenger(name: "Bob", gender: "Male", age: 18, bio: "I'm a romantic", purposeOfTrip: "On a journey to find my partner", lookingFor: "I'm looking for love"), Passenger(name: "Ramon", gender: "Male", age: 33, bio: "bla", purposeOfTrip: "bla", lookingFor: "bla")]
    
    
    var database = firebase.database()
    
    var userId = firebase.auth().currentUser.uid;
    return firebase.database().ref('/users/' + userId).once('value').then(function(snapshot) {
    var username = (snapshot.val() && snapshot.val().username) || 'Anonymous';
    // ...
    });
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flightPassengers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //         let cell = tableView.dequeueReusableCell(withIdentifier: "passengerId", for: indexPath)
        // Configure the cell...
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "passengerId", for: indexPath) as! FlightPassengersTableViewCell
        //        cell.passengerName.text = "something different"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "passengerId", for: indexPath) as? FlightPassengersTableViewCell else {
            fatalError("The cell is not of the type FlightPassengersTableViewCell")
        }
        
        
        
        let passenger = flightPassengers[indexPath.row]
        print("Here is the")
        print(passenger.name)
        cell.passengerName.text = passenger.name
        
        
        
        //        let destinationViewController = PassengerProfileViewController()
        //        destinationViewController.passenger = passenger
        
        //        destinationViewController.performSegue(withIdentifier: "toPassengerProfile", sender: self)
        
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
        let passenger = flightPassengers[indexPath.row]
        let destinationViewController = segue.destination as! PassengerProfileViewController
        destinationViewController.passenger = passenger
        
        
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}

