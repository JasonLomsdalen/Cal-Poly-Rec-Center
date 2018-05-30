//
//  rental.swift
//  Cal Poly Rec Center
//
//  Created by Jason Lomsdalen on 5/29/18.
//  Copyright © 2018 Jason / Kirsten Productions. All rights reserved.
//

import Foundation

class rental {
    var name : String
    var cost1_3: String
    var cost4_5: String
    var cost6_7: String
    
    init(name: String, cost1_3: String, cost4_5: String, cost6_7: String) {
        self.name = name
        self.cost1_3 = cost1_3
        self.cost4_5 = cost4_5
        self.cost6_7 = cost6_7
    }
}
