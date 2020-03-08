//
//  CustomerListTableViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UITableViewController {

    
    @IBOutlet weak var tblCustomer: UITableView!
    lazy var customerNames: [Customer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCustomers()
        
    }
    @IBAction func bbLogOut(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func loadCustomers()
    {
        customerNames.append(Customer(id: 1, firstName: "Philip", lastName: "DeLeon", email: "jhasondeleon@gmail.com"))
        customerNames.append(Customer(id: 2, firstName: "Philip", lastName: "DeLeon", email: "jhasondeleon@gmail.com"))
        
    }
}


//extension ViewController: UITableViewDataSource, UITableViewDelegate
//
//{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return customerNames.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomerCell")
//        
//        let customer = customerNames[indexPath.row]
//        cell?.textLabel?.text = customer.name
//        return cell!
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int
//    {
//        return 1
//    }
//}
    
    
    
    
        
