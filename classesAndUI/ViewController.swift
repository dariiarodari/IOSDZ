//
//  ViewController.swift
//  classesAndUI
//
//  Created by Dariia Rodari on 11/6/17.
//  Copyright © 2017 rodariapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let newStructure = Structure()

    @IBOutlet weak var selectStructureTypeLabel: UILabel!
    
    @IBOutlet weak var structureFieldsLabel: UILabel!

    @IBAction func createCaseStudyButton(_ sender: UIButton) {
        newStructure.structureType = .caseStudy
    }
    @IBAction func createWhitePaperButton(_ sender: UIButton) {
        newStructure.structureType = .whitePaper
    }
    @IBAction func createFunctionalityOverviewButtom(_ sender: UIButton) {
        newStructure.structureType = .functionalityOverview
    }
    @IBAction func createNewStructureFromTypeButton(_ sender: UIButton) {
        structureFieldsLabel.text = String(describing: newStructure.createNewStructureFromType())
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

