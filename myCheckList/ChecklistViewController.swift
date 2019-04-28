//
//  ViewController.swift
//  myCheckList
//
//  Created by 김민우 on 08/04/2019.
//  Copyright © 2019 김민우. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        let row = indexPath.row % 5
        if row == 0 {
            label.text = "Walk the dog"
        } else if row == 1 {
            label.text = "Brush my teeth"
        } else if row == 2 {
            label.text = "Learn iOS development"
        } else if row == 3 {
            label.text = "Soccer practice"
        } else if row == 4 {
            label.text = "Eat ice cream"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            }
            else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

