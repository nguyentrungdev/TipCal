//
//  ViewController.swift
//  tips
//
//  Created by Trung Nguyen Thanh on 11/2/15.
//  Copyright © 2015 trungnguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        tipLabel.text = "$0.00"
        billLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercents = [0.18, 0.2, 0.22]
        let tipPercent = tipPercents[tipControl.selectedSegmentIndex]
        var billAmount = Double(billField.text!)
        if (billAmount == nil) {
            billAmount = 0
        }
        let tip = billAmount! * tipPercent
        let total = billAmount! + tip

        tipLabel.text = String(format: "$%.2f", tip)
        billLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTab(sender: AnyObject) {
        view.endEditing(true)
    }
}

