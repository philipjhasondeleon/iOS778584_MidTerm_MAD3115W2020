//
//  AddNewBillViewControllerViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

enum PickerType:Int {
    case BillType = 0
}
class AddNewBillViewControllerViewController: UIViewController {
    
    let b = DataStorage.getInstance()

    @IBOutlet weak var textField_Date: UITextField!
    @IBOutlet weak var pickerBillType: UIPickerView!
    @IBOutlet weak var textBillType: UITextField!
    
    @IBOutlet weak var textBillId: UITextField!
    @IBOutlet weak var textBillDate: UITextField!
    @IBOutlet weak var textBillTotalAmount: UITextField!
    
    
    var billType = ["Hydro", "Internet", "Mobile"]
    var datePicker : UIDatePicker!
    
    var billId: Int!
    var totalBillAmount: Double!
    var bil : Bill!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerBillType.delegate = self
        self.pickerBillType.dataSource = self
        
        saveButton1()
        
    }
    
    
    private func saveButton1()
    {
        let btnSave1 = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddNewBillViewControllerViewController.saveBill(sender:)))
        
        navigationItem.rightBarButtonItem=btnSave1
        
    }
    
    @objc
    func saveBill(sender: UIBarButtonItem)
    {
        let sb1 = UIStoryboard(name: "Main", bundle: nil)
        //let BillListVC = sb2.instantiateInitialViewController(identifier: "BillListVC") as! ShowBillDetailsViewController
        let BillListVC = sb1.instantiateInitialViewController(identifier: "BillListVC") as! ShowBillDetailsViewController
        
        let bDate = textField_Date
        let bType = textBillType
        let bTotalAmount = textBillTotalAmount
        
        b.addNewBill(Bill_Date: bDate!, Bill_Type: bType!, Total_Bill_Amount: bTotalAmount!)
        
        let alert = UIAlertController(title: "Success", message: "Congrats! Added Successfully", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert: UIAlertAction!) in self.navigationController?.popViewController(animated: true)}))
          
         
          self.present(alert, animated: true)
        
        
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








extension AddNewBillViewControllerViewController:UIPickerViewDelegate
{
    //Set the Value for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return self.courseArray[row]
            return self.billType[row]
    }
    
    //Fetch the selected values
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //self.lblCourseName.text = self.courseArray[row]
        
        let strBillTypeName = self.billType[pickerView.selectedRow(inComponent: PickerType.BillType.rawValue)]
        self.textBillType.text = strBillTypeName
    }
}

extension AddNewBillViewControllerViewController:UIPickerViewDataSource
{
    
    //No of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //No. of items in picker view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return self.billType.count
        
    }
}

extension AddNewBillViewControllerViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if !textField.text!.isEmpty
        {
            if textField.tag == 0
            {
                self.billType.append(textField.text!)
            }
            
            textField.resignFirstResponder()
            self.pickerBillType.reloadComponent(textField.tag)
        }
        return true
    }
    
    
}


    
        
