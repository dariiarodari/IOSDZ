//
//  Car.swift
//  HM4
//
//  Created by Dariia Rodari on 11/21/17.
//  Copyright © 2017 rodariapp. All rights reserved.
//

import Foundation

enum Disks {
    case steel
    case alloy
    case iron
}

class Car: NSObject {

    let complectationName: String
    var disksType: Disks = .iron
    var isBooked: Bool = false
    private let leftOnStock: Int
    private var price: Int
    var onSale:Bool

    init(complectationName: String,
         leftOnStock: Int,
         price: Int,
         onSale: Bool = false)
    {
        self.complectationName = complectationName
        self.leftOnStock = leftOnStock
        self.price = price
        self.onSale = onSale
    }


    func checkIfOnSale() -> Bool {
        if leftOnStock < 0 || leftOnStock == 1 && isBooked == true {
            onSale = false
        } else {
            onSale = true
        }
        return onSale
    }


    func calculatePrice() -> Int {
        let disksPrice: Int
        switch disksType {
        case .alloy:
            disksPrice = 500
        case .steel:
            disksPrice = 1000
        default:
            disksPrice = 0
        }
        let customPrice = disksPrice + price
        showVendowNumber()
        return customPrice
    }


    private func showVendowNumber() {
        print("vendor number 555-55-55")
    }

    override var description: String {
        return """
        complectationName = \(complectationName)
        yearOfManufacturing = \(leftOnStock)
        disksType = \(disksType)
        isBooked = \(isBooked)
        price = \(price)
        onSale = \(onSale)
        """
    }
}























