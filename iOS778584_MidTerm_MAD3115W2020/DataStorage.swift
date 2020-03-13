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
 
private static var obj = DataStorage()
 
 
private  init () {   }
 
internal static func getInstance() -> DataStorage
{
  return obj
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
    AddCustomer(customer: c1)
   
  
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
