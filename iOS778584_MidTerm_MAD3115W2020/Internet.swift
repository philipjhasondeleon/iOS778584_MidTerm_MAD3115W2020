//
//  Internet.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import UIKit

class Internet: Bill
{
    var providerName: String
    var internetGbUsed: Int
    
    init(billId: Int,billDate: Date, billType: String, totalBillAmount: Double, providerName: String, internetGbUsed: Int) {
        self.providerName = providerName
        self.internetGbUsed = internetGbUsed
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        
    }
}
