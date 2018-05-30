//
//  PolyRentsTableViewController.swift
//  Cal Poly Rec Center
//
//  Created by Jason Lomsdalen on 5/29/18.
//  Copyright © 2018 Jason / Kirsten Productions. All rights reserved.
//

import UIKit

class PolyRentsTableViewController: UITableViewController {
    
    var rentals = [rental]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        rentals.append(rental(name:"Sleeping Bag / 20 & 0 degree", cost1_3: "$10", cost4_5: "$15", cost6_7: "25"))
        rentals.append(rental(name:"Tent 4 Person", cost1_3: "$13", cost4_5: "$22", cost6_7: "45"))
        rentals.append(rental(name:"Tarp", cost1_3: "$2", cost4_5: "$4", cost6_7: "8"))
        rentals.append(rental(name:"Backpack", cost1_3: "$8", cost4_5: "$16", cost6_7: "32"))
        rentals.append(rental(name:"Kayak (sit-on-top) 1 Person", cost1_3: "$10", cost4_5: "$20", cost6_7: "40"))
        rentals.append(rental(name:"Dry Bag", cost1_3: "$2", cost4_5: "$4", cost6_7: "$8"))
        rentals.append(rental(name:"Surfboard", cost1_3: "$15", cost4_5: "$25", cost6_7: "$50"))
        rentals.append(rental(name:"Climbing Shoes", cost1_3: "$5", cost4_5: "$10", cost6_7: "$20"))
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
        return rentals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? PolyRentsTableViewCell
        
        let currentRental = rentals[indexPath.row]
        cell?.itemName?.text = currentRental.name
        //cell?.rentalName?.text = currentRental.cost

        return cell!
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

    /*
    // MARK: - Navigation
    */
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showSelectedEquipment" {
            let destVC = segue.destination as? PolyRentsViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow
            destVC?.dataFromTable = rentals[(selectedIndexPath?.row)!]
        }
    }
    
    @IBAction func unwindFromDetail(segue:UIStoryboardSegue) {
        
    }
 

}
