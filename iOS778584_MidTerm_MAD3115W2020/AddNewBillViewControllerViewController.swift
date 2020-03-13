//
//  AddNewBillViewControllerViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewControllerViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField_Date: UITextField!
    
        var datePicker : UIDatePicker!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        //MARK:- textFiled Delegate
        func textFieldDidBeginEditing(_ textField: UITextField) {
            self.pickUpDate(self.textField_Date)
        }
        
        //MARK:- Function of datePicker
        func pickUpDate(_ textField : UITextField){
            
            // DatePicker
            self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
            self.datePicker.backgroundColor = UIColor.white
            self.datePicker.datePickerMode = UIDatePicker.Mode.date
            textField.inputView = self.datePicker
            
            // ToolBar
            let toolBar = UIToolbar()
            toolBar.barStyle = .default
            toolBar.isTranslucent = true
            toolBar.tintColor = .red//UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
            toolBar.sizeToFit()
            
            // Adding Button ToolBar
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddNewBillViewControllerViewController.doneClick))
            let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddNewBillViewControllerViewController.cancelClick))
            toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
            toolBar.isUserInteractionEnabled = true
            textField.inputAccessoryView = toolBar
            
        }
        
        // MARK:- Button Done and Cancel
        @objc func doneClick() {
            let dateFormatter1 = DateFormatter()
            dateFormatter1.dateStyle = .medium
            dateFormatter1.timeStyle = .none
            textField_Date.text = dateFormatter1.string(from: datePicker.date)
            textField_Date.resignFirstResponder()
        }
        
        @objc func cancelClick() {
            textField_Date.resignFirstResponder()
        }

    }
