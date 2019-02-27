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
class TodoItem: Codable {
    var description: String
    var emoji: String
    var priority: Priority.RawValue
    //var dueDate: UIDatePicker?
    var state: State.RawValue
    init(description: String, emoji: String, priority: Priority, state: State) {
        self.description = description
        self.emoji = emoji
        self.priority = priority.rawValue
        //self.dueDate = dueDate
        self.state = state.rawValue
    }
}
