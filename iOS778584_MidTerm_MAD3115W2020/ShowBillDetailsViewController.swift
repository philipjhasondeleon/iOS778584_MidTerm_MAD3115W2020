//
//  ShowBillDetailsViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
@IBOutlet weak var tblBill: UITableView!
    
var billDate: Date!
var billType: String!
var totalBillAmount: Double!
  lazy var BillCell: [Bill] = []
  
  var tempvar = DataStorage.getInstance()
  
  override func viewDidLoad() {
      super.viewDidLoad()
      
      let getdata = DataStorage.getInstance()
      getdata.createBill()
      
      tblBill.delegate = self
      
      
  }


  func numberOfSections(in tableView: UITableView) -> Int {
       return 1
     }
      
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return tempvar.returnCount()
     }
      
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
       let x = tempvar.returnBillObject(billID: Int(indexPath.row+1))
       let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell", for: indexPath)
       cell.textLabel?.text = x?.billType
        return cell
     }
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return "Bill Details"
     }
      
     override func viewWillAppear(_ animated: Bool) {
         tblBill.reloadData()
         
       }
  }
        
