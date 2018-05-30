//
//  PolyRentsViewController.swift
//  Cal Poly Rec Center
//
//  Created by Jason Lomsdalen on 5/29/18.
//  Copyright © 2018 Jason / Kirsten Productions. All rights reserved.
//

import UIKit

class PolyRentsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cost1_3Label: UILabel!
    @IBOutlet weak var cost4_5Label: UILabel!
    @IBOutlet weak var cost6_7Label: UILabel!
    
    var dataFromTable : rental?

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = dataFromTable?.name
        cost1_3Label.text = dataFromTable?.cost1_3
        cost4_5Label.text = dataFromTable?.cost4_5
        cost6_7Label.text = dataFromTable?.cost6_7

        // Do any additional setup after loading the view.
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
