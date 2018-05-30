//
//  HourlyAvg.swift
//  ParseRecCenterJSON
//
//  Created by Jason Lomsdalen on 5/29/18.
//  Copyright © 2018 jlomsdal. All rights reserved.
//

import Foundation

struct HourlyAvg : Codable {
    var averages : [Averages]
    /*private enum CodingKeys: String, CodingKey{
        case averages = ""
    }*/
    class Averages : Codable {
        private enum CodingKeys: String, CodingKey{
            case hour0 = "0"
            case hour4 = "4"
            case hour5 = "5"
            case hour6 = "6"
            case hour7 = "7"
            case hour8 = "8"
            case hour9 = "9"
            case hour10 = "10"
            case hour11 = "11"
            case hour12 = "12"
            case hour13 = "13"
            case hour14 = "14"
            case hour15 = "15"
            case hour16 = "16"
            case hour17 = "17"
            case hour18 = "18"
            case hour19 = "19"
            case hour20 = "20"
            case hour21 = "21"
            case hour22 = "22"
            case hour23 = "23"
        }
        var version : String?
        var hour0 : Double?
        var hour4 : Double?
        var hour5 : Double?
        var hour6 : Double?
        var hour7 : Double?
        var hour8 : Double?
        var hour9 : Double?
        var hour10 : Double?
        var hour11 : Double?
        var hour12 : Double?
        var hour13 : Double?
        var hour14 : Double?
        var hour15 : Double?
        var hour16 : Double?
        var hour17 : Double?
        var hour18 : Double?
        var hour19 : Double?
        var hour20 : Double?
        var hour21 : Double?
        var hour22 : Double?
        var hour23 : Double?
        
        func toAnyObject() -> Any {
            return [
                "version" : version as Any,
                "hour0" : hour0 as Any,
                "hour4" : hour4 as Any,
                "hour5" : hour5 as Any,
                "hour6" : hour6 as Any,
                "hour7" : hour7 as Any,
                "hour8" : hour8 as Any,
                "hour9" : hour9 as Any,
                "hour10" : hour10 as Any,
                "hour11" : hour11 as Any,
                "hour12" : hour12 as Any,
                "hour13" : hour13 as Any,
                "hour14" : hour14 as Any,
                "hour15" : hour15 as Any,
                "hour16" : hour16 as Any,
                "hour17" : hour17 as Any,
                "hour18" : hour18 as Any,
                "hour19" : hour19 as Any,
                "hour20" : hour20 as Any,
                "hour21" : hour21 as Any,
                "hour22" : hour22 as Any,
                "hour23" : hour23 as Any,
            ]
        }
    }
    
}
