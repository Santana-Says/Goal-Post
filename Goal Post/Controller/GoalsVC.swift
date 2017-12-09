//
//  GoalsVC.swift
//  Goal Post
//
//  Created by Jeffrey Santana on 12/9/17.
//  Copyright © 2017 Jefffrey Santana. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //Variables
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.isHidden = false
        
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configCell(goalDescription: "Code for two hours a day!", goalType: .shortTerm, goalProgressAmount: 31)
        return cell
    }
}
