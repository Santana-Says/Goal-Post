//
//  CreateGoalVC.swift
//  Goal Post
//
//  Created by Jeffrey Santana on 12/9/17.
//  Copyright © 2017 Jefffrey Santana. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: ButtonView!
    @IBOutlet weak var longTermBtn: ButtonView!
    @IBOutlet weak var nextBtn: UIButton!
    
    //Variables
    var goalType: GoalType = .shortTerm

    override func viewDidLoad() {
        super.viewDidLoad()

        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setDeselectedColor()
        longTermBtn.setSelectedColor()
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
}
