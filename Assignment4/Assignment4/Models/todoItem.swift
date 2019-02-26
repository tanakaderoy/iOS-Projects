//
//  todoItem.swift
//  Assignment4
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation
import UIKit
public enum Priority : String {
    case high = "High"
    case medium = "Medium"
    case low = "Low"
}
public enum State: String {
    case open = "Open"
    case closed = "Closed"
}
class TodoItem {
    var description: String
    var emoji: String
    var priority: Priority
    //var dueDate: UIDatePicker?
    var state: State
    init(description: String, emoji: String, priority: Priority, state: State) {
        self.description = description
        self.emoji = emoji
        self.priority = priority
        //self.dueDate = dueDate
        self.state = state
    }
}
