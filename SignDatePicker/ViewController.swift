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
var i = 0

class ViewController: UIViewController {
    @IBOutlet weak var myDatePickerValue: UIDatePicker!
  
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var goalTextField: UITextField!
    @IBOutlet weak var zodicTextField: UITextField!
    
    
    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
     
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        let Zodic = myDatePickerValue.date
         goalTextField.text = formatter.string(from: myDatePickerValue.date)
        
      
      
//Aries
        if (Zodic >= formatter.date(from: "03/21/2018")! && Zodic <= formatter.date(from: "04/19/2018")!){
            zodicTextField.text! = "Mu/Aries/(03/21~04/19)"
            self.imageView.image = UIImage(named: "Aries")}
        
//Taura
        else if (Zodic >= formatter.date(from: "04/20/2018")! && Zodic <= formatter.date(from: "05/20/2018")!){
            zodicTextField.text! = "Aldebaran/Taura/(04/20~05/20)"
             self.imageView.image = UIImage(named: "Taura")}
        
//Gemini
        else if (Zodic >= formatter.date(from: "05/21/2018")! && Zodic <= formatter.date(from: "06/21/2018")!){
             zodicTextField.text! = "Saga/Gemini/(05/21~06/21)"
             self.imageView.image = UIImage(named: "Gemini")}

//Cancer
        else if (Zodic >= formatter.date(from: "06/22/2018")! && Zodic <= formatter.date(from: "07/22/2018")!){
            zodicTextField.text! = "Death Mask/Cancer/(06/22~07/22)"
             self.imageView.image = UIImage(named: "Cancer")}
//Leo
        else if (Zodic >= formatter.date(from: "07/23/2018")! && Zodic <= formatter.date(from: "08/22/2018")!){
            zodicTextField.text! = "Aiolia/Leo/(07/23~08/22)"
             self.imageView.image = UIImage(named: "Leo")}
//Virgo
        else if (Zodic >= formatter.date(from: "08/23/2018")! && Zodic <= formatter.date(from: "09/22/2018")!){
            zodicTextField.text! = "Shaka/Virgo/(08/23~09/22)"
             self.imageView.image = UIImage(named: "Virgo")}
//Libra
        else if (Zodic >= formatter.date(from: "09/23/2018")! && Zodic <= formatter.date(from: "10/23/2018")!){
            zodicTextField.text! = "Dohko/Libra/(09/23~10/23)"
             self.imageView.image = UIImage(named: "Libra")}
//Scorpio
        else if (Zodic >= formatter.date(from: "10/24/2018")! && Zodic <= formatter.date(from: "11/21/2018")!){
            zodicTextField.text! = "Milo/Scorpio/(10/24~11/21)"
             self.imageView.image = UIImage(named: "Scorpio")}
            
//Sagittarius
        else if (Zodic >= formatter.date(from: "11/22/2018")! && Zodic <= formatter.date(from: "12/20/2018")!){
            zodicTextField.text! = "Aiolos/Sagittarius/(11/22~12/20)"
             self.imageView.image = UIImage(named: "Sagittarius")}
//Capricorn
         else if (Zodic >= formatter.date(from: "12/21/2018")! && Zodic <= formatter.date(from: "01/20/2019")!){
            zodicTextField.text! = "Shura/Capricorn/(12/21~1/20)"
             self.imageView.image = UIImage(named: "Capricorn")}
//Aquarius
        else if (Zodic >= formatter.date(from: "01/21/2018")! && Zodic <= formatter.date(from: "02/19/2018")!){
            zodicTextField.text! = "Camus/Aquarius/(01/21~2/19)"
             self.imageView.image = UIImage(named: "Aquarius")}
//Pisces
        if (Zodic >= formatter.date(from: "02/20/2018")! && Zodic <= formatter.date(from: "03/20/2018")!){
            zodicTextField.text! = "Aprodite/Pisces/(02/20~3/20)"
             self.imageView.image = UIImage(named: "Pisces")}

    }
//change date picker color
    override func viewDidLoad() {
        super.viewDidLoad()
        myDatePickerValue.backgroundColor = .black
         myDatePickerValue.setValue(UIColor.white, forKeyPath: "textColor")
    }
    override func viewDidDisappear(_ animated: Bool) {
        if timer != nil {
            timer?.invalidate()
        }
    }
}




