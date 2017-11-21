//
//  ViewController.swift
//  HM4
//
//  Created by Dariia Rodari on 11/21/17.
//  Copyright © 2017 rodariapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var complecttionNameLabel: UILabel!
    @IBOutlet weak var ifIsOnSaleLabel: UILabel!
    @IBOutlet weak var priceValueLabel: UILabel!
    
    let toyotaCorolla = Car(complectationName: "CVT", leftOnStock: 1, price: 100000)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        complecttionNameLabel.text = toyotaCorolla.complectationName
        ifIsOnSaleLabel.text = "\(toyotaCorolla.checkIfOnSale())"
        priceValueLabel.text = "\(toyotaCorolla.calculatePrice())"
    }
    
    @IBAction func bookACar(_ sender: UIButton) {
        toyotaCorolla.isBooked = true
        setupUI()
    }
    
    @IBAction func addSteelWheels(_ sender: UIButton) {
        toyotaCorolla.disksType = .steel
        setupUI()
    }
    
    @IBAction func addAlloyWheels(_ sender: UIButton) {
        toyotaCorolla.disksType = .alloy
        setupUI()
    }
    
}

