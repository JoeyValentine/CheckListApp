//
//  ChecklistItem.swift
//  myCheckList
//
//  Created by 김민우 on 28/04/2019.
//  Copyright © 2019 김민우. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    /* For toggling */
    func toggleChecked() {
        checked = !checked
    }
}
