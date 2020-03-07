//
//  ViewController.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func btnSignIn(_ sender: UIButton)
        {
            if let bundlePath = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
            {
                if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                {
                    if let users = dictionary["users"] as? [[String:String]]
                    {
                        var flag = false
                        for userList in users
                        {
                            if userList["username"] == txtUserName.text && userList["password"] == txtPassWord.text
                            {
                                flag = true
                                
                            }
                            if flag == true{
                            print("Valid User")
                            }else  {
                                      let alertController = UIAlertController(title: "Login Failed!", message:
                                      "Username or Password do not match", preferredStyle: .actionSheet)
                                      alertController.addAction(UIAlertAction(title: "Try Again", style: .cancel))
                                    
                                      
                                      
                                      self.present(alertController, animated: true, completion: nil)
                                  }
                              }
                        }
                }
        }
    }
}
    

