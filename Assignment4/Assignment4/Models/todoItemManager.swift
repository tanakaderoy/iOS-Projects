//
//  todoItemManager.swift
//  Assignment4
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation
import UIKit
class TodoItemManager {
    static var instance = TodoItemManager()
    var todoItems = [TodoItem]()
    
    var count: Int {
        return todoItems.count
    }
    
    private init() {
        //json file
        todoItems.append(TodoItem(description: "Finish HW", emoji: "😃", priority: Priority.high,  state: true))
        todoItems.append(TodoItem(description: "Watch Netflix", emoji: "😃", priority: Priority.high,state: true))
        todoItems.append(TodoItem(description: "Finish HW", emoji: "😃", priority: Priority.high,  state: true))
        todoItems.append(TodoItem(description: "SLeep", emoji: "😃", priority: Priority.high,   state: true))
    }
    
    func todoItemAtIndex(_ index: Int) -> TodoItem? {
        if todoItems.isValidIndex(index) {
            return todoItems[index]
        }else{
            return nil
        }
    }
    
}
