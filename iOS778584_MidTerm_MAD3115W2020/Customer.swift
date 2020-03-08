//
//  Customer.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import UIKit

class Customer
{
    var id : Int
    var firstName : String
    var lastName : String
    var email : String
    
    
    init(id : Int, firstName: String, lastName:String, email: String)
    {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
    }
}
