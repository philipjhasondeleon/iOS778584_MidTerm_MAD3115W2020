//
//  Mobile.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import UIKit

class Mobile: Bill
{
    private var mobileManufacturerName: String
    private var planName: String
    private var mobileNumber: Int
    private var internetGbUsed: Int
    private var minuteUsed: Int
    
    init(billId: Int, billDate: Date, billType: String, totalBillAmount: Double, mobileManufacturerName: String, planName: String, mobileNumber: Int, internetGbUsed: Int, minuteUsed: Int) {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGbUsed = internetGbUsed
        self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
}
