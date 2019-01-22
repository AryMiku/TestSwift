//
//  ViewController.swift
//  Test2
//
//  Created by Admin on 15/1/2562 BE.
//  Copyright © 2562 AryMiku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HelloLabel: UILabel!
    @IBOutlet weak var SelectedDate: UIDatePicker!
    @IBAction func buttonHello(_ sender: UIButton) {
        let currentDate = SelectedDate.date
        let myFormatter = DateFormatter()
        myFormatter.dateFormat = "EEEE"
        let thaiLocale = NSLocale(localeIdentifier:"TH_th")
        myFormatter.locale = thaiLocale as Locale!
        let currentDaateText = myFormatter.string(from:currentDate)
        HelloLabel.text = currentDaateText
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        HelloLabel.text = "999"
        // Do any additional setup after loading the view, typically from a nib.
    }


}

