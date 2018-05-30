//
//  ViewController.swift
//  ParseRecCenterJSON
//
//  Created by Jason Lomsdalen on 5/29/18.
//  Copyright © 2018 jlomsdal. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        uploadToFirebase()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var ref : DatabaseReference!
    
    let schoolJSON = "http://www.asi.calpoly.edu/sec/feeds/rc_attendance.php?id=2"
    
    func uploadToFirebase() {
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let request = URLRequest(url: URL(string: schoolJSON)!)
        
        let task: URLSessionDataTask = session.dataTask(with: request)
        { (receivedData, response, error) -> Void in
            
            if let data = receivedData {
                do {
                    let decoder = JSONDecoder()
                    var hourlyAvgService = try decoder.decode([HourlyAvg].self, from: data)

                    self.ref = Database.database().reference().child("hourlyAvg")

                    for item in hourlyAvgService {
                       // item.version = item.version?.replacingOccurrences(of: ".", with: "")
                        let schoolRef = self.ref?.child(item.version!)
                        schoolRef?.setValue(item.toAnyObject())
                       // self.geoFire?.setLocation(CLLocation(latitude:item.latitude!,longitude:item.longitude!), forKey: item.name)
                    }
                    
                    
                } catch {
                    print("Exception on Decode: \(error)")
                }
            }
        }
        
        task.resume()
    }
}

