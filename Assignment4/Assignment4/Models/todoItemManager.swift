//
//  todoItemManager.swift
//  Assignment4
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation
import UIKit

extension Notification.Name {
    static let itemsLoaded = Notification.Name("itemsLoaded")
}

class TodoItemManager {
    static var instance = TodoItemManager()
    let fileName = "todo.json"
    var todoItems = [TodoItem]()
    
    var count: Int {
        return todoItems.count
    }
    
    private init() {
        todoItems.append(TodoItem(description: "Delete Me", emoji: "🚯", priority: .high, state: .open))
        todoItems.append(TodoItem(description: "Add item", emoji: "➕", priority: .medium, state: .closed))
        todoItems.append(TodoItem(description: "Edit Me", emoji: "⚽️", priority: .low, state: .open))
        
 
        
        
    }
    
    func todoItemAtIndex(_ index: Int) -> TodoItem? {
        if todoItems.isValidIndex(index) {
            return todoItems[index]
        }else{
            return nil
        }
    }
    
    func save() {
        let adapter = TodoFileDataAdapter(fileName: fileName)
        adapter.saveTask(todoItems)
    }
    
    func load() {
        let adapter = TodoFileDataAdapter(fileName: fileName)
        if let todoItems = adapter.loadTask() {
            self.todoItems = todoItems
            
            NotificationCenter.default.post(name: .itemsLoaded, object: nil)
            
         
        }
    }
    
}
