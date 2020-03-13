//
//  Hydro.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import UIKit

class Hydro: Bill
{
    var agencyName: String
    var unitConsumed: Int
    
    init(billId: Int, billDate: Date, billType: String, totalBillAmount: Double, agencyName: String, unitConsumed: Int) {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
}
