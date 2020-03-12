//
//  Bill.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Bill
{
    var billId: Int
    var billDate: Date
    var billType: String
    var totalBillAmount: Double
    
    
    init(billId: Int, billDate: Date, billType: String, totalBillAmount: Double) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
        
    }
}
