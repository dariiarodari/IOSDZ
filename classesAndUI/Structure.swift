//
//  Structure.swift
//  classesAndUI
//
//  Created by Dariia Rodari on 11/6/17.
//  Copyright © 2017 rodariapp. All rights reserved.
//

import Foundation

enum Types {
    case whitePaper
    case functionalityOverview
    case caseStudy
    case standard
}

class Structure: NSObject {
    var structureType: Types = .standard
    private var structureGuides: Array<String> = []

    override init() {
    }

    func createNewStructureFromType() -> Array<String> {
        switch structureType {
        case .whitePaper:
            let guidesArray = ["White Paper guide 1", "White Paper guide 2", "White Paper guide N"]
            structureGuides = guidesArray
            return structureGuides
        case .functionalityOverview:
            let guidesArray = ["Functionality Overview guide 1", "Functionality Overview  guide 2", "Functionality Overview guide N"]
            structureGuides = guidesArray
            return structureGuides
        case .caseStudy:
            let guidesArray = ["Case Study guide 1", "Case Study guide 2", "Case Study guide N"]
            structureGuides = guidesArray
            return structureGuides
        case .standard:
            structureGuides = ["Blank Page"]
            return structureGuides
        }
    }

}
