//
//  CustomerListTableViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.hidesBarsOnTap = true
        //color of navigation bar
        self.navigationController?.navigationBar.backgroundColor = UIColor.red
        
        
        //let vc = self.navigationController?.viewControllers[1]
        //self.navigationController?.popToViewController(vc!, animated: true)

        
    }
    @IBAction func bbLogOut(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
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
