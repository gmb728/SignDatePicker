//
//  ViewController.swift
//  MondayDatePicker
//
//  Created by Chang Sophia on 2018/8/23.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
var timer: Timer?
var goal: Date!
let images =  ["1","2","3","4","5","6","7"]
var i = 0

class ViewController: UIViewController {
    @IBOutlet weak var myDatePickerValue: UIDatePicker!
    
    @IBOutlet weak var weekImageView: UIImageView!
    @IBOutlet weak var weekTextField: UITextField!
    @IBOutlet weak var goalTextField: UITextField!
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    
    
    @IBAction func myDatePickerValue(_ sender: UIDatePicker) {
        goal = sender.date
         goalTextField.isHidden = true
        let today = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        let weekDay = formatter.string(from: today)
        weekTextField.text = ("\(weekDay)")
        goalTextField.text = formatter.string(from: myDatePickerValue.date)
        i = i + 1
        if i >= 7 {
            i = 0
         
        }
    }
  
    
    @IBAction func mySegmentSelect(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0 && goalTextField.text == "Monday"){
            self.weekImageView.image = UIImage(named: "1")
            goalTextField.isHidden = false
        }else if (sender.selectedSegmentIndex == 1 && goalTextField.text == "Tuesday"){
            self.weekImageView.image = UIImage(named: "2")
            goalTextField.isHidden = false
        }else if (sender.selectedSegmentIndex == 2 && goalTextField.text == "Wednesday"){
            self.weekImageView.image = UIImage(named: "3")
            goalTextField.isHidden = false
       }else if (sender.selectedSegmentIndex == 3 && goalTextField.text == "Thursday"){
            self.weekImageView.image = UIImage(named: "4")
            goalTextField.isHidden = false
       }else if (sender.selectedSegmentIndex == 4 && goalTextField.text == "Friday"){
            self.weekImageView.image = UIImage(named: "5")
            goalTextField.isHidden = false
       }else if (sender.selectedSegmentIndex == 5 && goalTextField.text == "Saturday"){
            self.weekImageView.image = UIImage(named: "6")
            goalTextField.isHidden = false
       }else if (sender.selectedSegmentIndex == 6 && goalTextField.text == "Sunday"){
            self.weekImageView.image = UIImage(named: "7")
            goalTextField.isHidden = false
        } else {self.weekImageView.image = UIImage(named: "8")
            goalTextField.isHidden = false
            
        }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        override func viewDidDisappear(_ animated: Bool) {
            if timer != nil {
                timer?.invalidate()
            }
}
}

