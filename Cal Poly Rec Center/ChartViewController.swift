//
//  ChartViewController.swift
//  Cal Poly Rec Center
//
//  Created by Kirsten M Loechl on 5/29/18.
//  Copyright © 2018 Jason / Kirsten Productions. All rights reserved.
//

import UIKit
import Charts
import Firebase

class ChartViewController: UIViewController {
    var databaseRef : DatabaseReference?
    var morninghours: [String]!
    var afternoonHours: [String]!
    var hours : [Double]!
    
    @IBOutlet weak var barChartView: BarChartView!
    @IBOutlet weak var afternoonBarChart: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let ref = self.databaseRef?.child("dailyhourlyAvg").child("May 29 2018 04:45:00:000Am")
//
//        ref?.observe(.value, with: { (snapshot) in
//             print ("***") //doesnt print?
////            for hour in snapshot.children {
////                print (hour)
////                self.hours = hour as! [Int]
////            }
//            self.hours = snapshot.value as! [Int]
//        })
//
//        print (hours)
        
        hours = [45.0, 90.0, 255.0, 263.0, 300.0, 315.0, 377.0, 265.0, 230.0, 177.0];
        morninghours = ["12am", "4am", "5am", "6am", "7am", "8am", "9am", "10am", "11am", "12pm"];
        afternoonHours = ["1pm", "2pm", "3pm", "4pm", "5pm", "6pm", "7pm", "8pm", "9pm", "10pm"];
        setMorningChart(dataPoints: morninghours, values: hours)
        // Do any additional setup after loading the view.
    }
    func setMorningChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        
        var dataEntries: [BarChartDataEntry] = Array()
        var counter = 0.0
        
        for i in 0..<dataPoints.count {
            counter += 1.0
            let dataEntry = BarChartDataEntry(x: values[i], y: counter)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Hour")
        let chartData = BarChartData()
        chartData.addDataSet(chartDataSet)
        barChartView.data = chartData
        
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
