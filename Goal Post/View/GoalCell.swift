//
//  GoalCell.swift
//  Goal Post
//
//  Created by Jeffrey Santana on 12/9/17.
//  Copyright © 2017 Jefffrey Santana. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configCell(goalDescription desc: String, goalType type: GoalType, goalProgressAmount days: Int) {
        goalDescriptionLbl.text = desc
        goalTypeLbl.text = type.rawValue
        goalProgressLbl.text = "\(days)"
    }
    
}
