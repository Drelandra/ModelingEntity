//
//  ViewController.swift
//  ModelingEntity
//
//  Created by Andre Elandra on 15/05/19.
//  Copyright © 2019 Andre Elandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var milkLabel: UILabel!
    
    var coffeeMachine: CoffeeMachine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coffeeMachine = CoffeeMachine(milk: 200, brand: "Apple")
        print("jumlah beans: \(coffeeMachine.numOfBeans)), jumlah milk: \(String(coffeeMachine.numOfMilk))")
        
        updateLabel()
        print(coffeeMachine.voltage)
        coffeeMachine.runMotor()
        
    }
    
    @IBAction func addCoffee(_ sender: Any) {
        coffeeMachine.addBeans(beans: 100)
        updateLabel()
    }
    
    
    @IBAction func addMilk(_ sender: Any) {
        coffeeMachine.addMilk(milk: 20)
        updateLabel()
    }
    
    @IBAction func makeCoffee(_ sender: Any) {
        coffeeMachine.makeCoffee()
        updateLabel()
    }
    
    func updateLabel() {
        coffeeLabel.text = String(coffeeMachine.numOfBeans)
        milkLabel.text = String(coffeeMachine.numOfMilk)
    }
    
    
    
}
