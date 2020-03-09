//
//  CustomerListTableViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController :UIViewController,UITableViewDelegate,UITableViewDataSource
{

    
    @IBOutlet weak var tblCustomer: UITableView!
    var firstName: String!
    var lastName: String!
    var email: String!
    lazy var CustomerCell: [Customer] = []
    
    var tempvar = DataStorage.getInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let getdata = DataStorage.getInstance()
        getdata.createCust()
        
        tblCustomer.delegate = self
        tblCustomer.delegate = self
        
    }
    @IBAction func bbLogOut(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
    



    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
       }
        
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return tempvar.returnCount()
       }
        
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
       {
         let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
         let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell", for: indexPath)
         cell.textLabel?.text = x?.fullName
          return cell
       }
       func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
         return "List of Customers"
       }
        
       override func viewWillAppear(_ animated: Bool) {
           tblCustomer.reloadData()
           
         }
    }

    
    
    
    
        
