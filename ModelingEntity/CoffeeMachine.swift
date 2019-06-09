//
//  SikatGigiEntity.swift
//  ModelingEntity
//
//  Created by Andre Elandra on 15/05/19.
//  Copyright © 2019 Andre Elandra. All rights reserved.
//

import Foundation

class CoffeeMachine : Machine{
    var numOfBeans: Int = 100
    var numOfMilk: Int
    var brand: String
    
    init(milk: Int, brand: String) {
        numOfMilk = milk
        self.brand = brand
    }
    
    func addMilk(milk: Int) {
        numOfMilk += milk
    }
    func addBeans(beans: Int) {
        numOfBeans += beans
    }
    func makeCoffee() {
        numOfBeans = numOfBeans - 2
        numOfMilk = numOfMilk - 1
        
        //        using function from parent class example
        //        var c = CoffeeMachine(milk: <#T##Int#>, brand: <#T##String#>)
        //        c.runMotor()
        
    }
    
    //    override example
    //    override func runMotor() {
    //        print("this is a CoffeeMachine runMotor function")
    //    }
    
}

//var c = CoffeeMachine(milk: <#T##Int#>, brand: <#T##String#>)
//c.runMotor()
