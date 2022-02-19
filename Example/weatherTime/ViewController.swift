//
//  ViewController.swift
//  weatherTime
//
//  Created by Debashish-hub on 02/19/2022.
//  Copyright (c) 2022 Debashish-hub. All rights reserved.
//

import UIKit
import weatherTime

class ViewController: UIViewController {

    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var sunrise: UILabel!
    
    @IBOutlet weak var sunset: UILabel!
    
    //some hard coded date and time
    let dt = 1645286400
    let sunr = 1645231451
    let suns = 1645273037
    let timeUtility = weatherTime.weatherUtility()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        date.text = "Date : \(timeUtility.getDate(dt: Double(dt)))"
        time.text = "Time : \(timeUtility.getTime(dt: Double(dt)))"
        sunrise.text = "Sunrise : \(timeUtility.sunTime(time: Double(sunr)))"
        sunset.text = "Sunset : \(timeUtility.sunTime(time: Double(suns)))"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

