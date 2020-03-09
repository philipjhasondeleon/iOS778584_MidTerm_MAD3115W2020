//
//  ViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swRememberMe: UISwitch!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Day3SegueAndNavigationVCExample
        //when tap hides the bar on top
        //self.navigationController?.hidesBarsOnTap = true
        
        //color of navigation bar
        self.navigationController?.navigationBar.backgroundColor = UIColor.green
        
    }
    func rememberMeSwitchValue()
    {
        let userDefault = UserDefaults.standard
        
        if let username = userDefault.string(forKey: "username")
        {
            txtUserName.text = username
            
            if let password = userDefault.string(forKey: "password")
            {
                txtPassWord.text = password
            }
        }
    }

    @IBAction func btnSignIn(_ sender: UIButton)
        {
            let username:String=txtUserName.text!
            let password:String=txtPassWord.text!
            if let bundlePath = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
            {
                if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                {
                    if let users = dictionary["users"] as? [[String:String]]
                    {
                        var flag = false
                        for userList in users
                        {
                            if userList["username"] == username && userList["password"] == password
                            {
                                flag = true
                            }
                            if flag == true{
                            print("Valid User")
                            }else  {
                                      let alertController = UIAlertController(title: "Login Failed!", message:
                                      "Invalid user id or password", preferredStyle: .actionSheet)
                                      alertController.addAction(UIAlertAction(title: "Try Again", style: .cancel))
                                    
                                      
                                      
                                      self.present(alertController, animated: true, completion: nil)
                                  }
                              }
                        }
                }
        }
    }
}


