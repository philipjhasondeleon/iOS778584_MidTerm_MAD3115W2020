//
//  DataStorage.swift
//  iOS778584_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation


class DataStorage
{
    
private var customerDictionary = [Int:Customer]()
    private var billDictionary = [Int: Bill]()
    
    
private static var obj = DataStorage()
 
 
private  init () {   }
 
internal static func getInstance() -> DataStorage
{
  return obj
}

func addNewBill(Bill_Date: Date, Bill_Type: String, Total_Bill_Amount: Double)
{
    let b = billDictionary.count + 1
    
    let temp1 = Bill(billId: b, billDate: Bill_Date, billType: Bill_Type, totalBillAmount: Total_Bill_Amount)
    self.AddBill(bill: temp1)
    }
    
    func returnBillObject(billID : Int) -> Bill?
    {
        for(k1,v1) in billDictionary
        {
            if billID == k1
            {
                return v1
                
            }
        }
        return nil
    }
    
    func returnCount1() -> Int
    {
        return billDictionary.count
    }
    
    func createBill()
    {
        let b1 = Bill(billId: 1, billDate: Date(), billType: "Hydro", totalBillAmount: 123.50)
        AddBill(bill: b1)
    }
    
    func AddBill(bill : Bill)
    {
        billDictionary.updateValue(bill, forKey: bill.billId)
    }
    
    

    
    
func addNewCustomer(First_Name : String, Last_Name : String, email : String)
{
  let c = customerDictionary.count + 1
   
 
  let temp = Customer(id: c, firstName: First_Name, lastName: Last_Name, email: email)
  self.AddCustomer(customer: temp)
}
 
func returnCustObject(custID : Int) -> Customer?
{
  for (k,v) in customerDictionary
  {
    if custID == k
    {
      return v
    }
  }
  return nil
   
}
 
func returnCount() -> Int
{
  return customerDictionary.count
}
 
func createCust()
{
    let c1 = Customer(id: 1, firstName: "Philip", lastName: "De Leon", email: "jhasondeleon@gmail.com")
    let c2 = Customer(id: 2, firstName: "Afton", lastName: "Hawken", email: "ahawken0@stumbleupon.com")
    let c3 = Customer(id: 3, firstName: "Perla", lastName: "Dudson", email: "pdudson1@businessweek.com")
    let c4 = Customer(id: 4, firstName: "Ellene", lastName: "Sartain", email: "esartain2@canalblog.com")
    let c5 = Customer(id: 5, firstName: "Shanie", lastName: "Peak", email: "speak4@ox.ac.uk")
    AddCustomer(customer: c1)
    AddCustomer(customer: c2)
    AddCustomer(customer: c3)
    AddCustomer(customer: c4)
    AddCustomer(customer: c5)
    
}
 
 
 
func AddCustomer(customer: Customer)
{
    customerDictionary.updateValue(customer, forKey: customer.id)
}
func printdata()
{
  for i in customerDictionary.values
  {
    print(i.fullName)
  }
}
}
