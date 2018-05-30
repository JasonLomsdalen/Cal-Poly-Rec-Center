//
//  PolyRentsTableViewCell.swift
//  Cal Poly Rec Center
//
//  Created by Jason Lomsdalen on 5/29/18.
//  Copyright © 2018 Jason / Kirsten Productions. All rights reserved.
//

import UIKit

class PolyRentsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
