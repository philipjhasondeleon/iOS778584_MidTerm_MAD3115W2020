//
//  AddNewCustomerViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController
{
    
    let a = DataStorage.getInstance()

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    var firstName : String!
    var lastName : String!
    var email : String!
    var cust : Customer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton()

        // Do any additional setup after loading the view.
    }
    
    
    private func saveButton()
    {
     let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddNewCustomerViewController.saveCustomer(sender:)))
       
      navigationItem.rightBarButtonItem=btnSave
    }
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
       
     let sb1=UIStoryboard(name: "Main", bundle: nil)
     let CustomerListVC = sb1.instantiateViewController(identifier: "CustomerListVC") as! CustomerListTableViewController
     
     let fName = txtFirstName.text
       let lName = txtLastName.text
        
      
             let email = txtEmail.text
             a.addNewCustomer(First_Name: fName!, Last_Name: lName!, email: email!)
             
             let alert = UIAlertController(title: "Success", message: "Congrats! Added Successfully", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert: UIAlertAction!) in self.navigationController?.popViewController(animated: true)}))
             
            
             self.present(alert, animated: true)
        
     }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
