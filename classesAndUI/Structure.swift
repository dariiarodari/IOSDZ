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
            structureGuides = ["White Paper guide 1", "White Paper guide 2", "White Paper guide N"]
            return structureGuides
        case .functionalityOverview:
            structureGuides = ["Functionality Overview guide 1", "Functionality Overview  guide 2", "Functionality Overview guide N"]
            return structureGuides
        case .caseStudy:
            structureGuides = ["Case Study guide 1", "Case Study guide 2", "Case Study guide N"]
            return structureGuides
        case .standard:
            structureGuides = ["Blank Page"]
            return structureGuides
        }
    }

}
