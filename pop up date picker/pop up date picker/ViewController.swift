//
//  ViewController.swift
//  pop up date picker
//
//  Created by Aurelio Le Clarke on 13.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTF: UITextField!
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
       let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels
        
        dateTF.inputView = datePicker
        dateTF.text = formatDate(date: Date()) //todays date
    }
    @objc func dateChange(datePicker: UIDatePicker) {
        dateTF.text = formatDate(date: datePicker.date)
    
    }
    
    func formatDate (date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd yyyy"
        return formatter.string(from: date)
    }
    

}


