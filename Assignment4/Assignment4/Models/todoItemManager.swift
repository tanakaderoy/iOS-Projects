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
    let fileName = "todo.json"
    var todoItems = [TodoItem]()
    
    var count: Int {
        return todoItems.count
    }
    
    private init() {/*
        let todoTaskOne = TodoItem(description: "Play Fifa", emoji: "emoji", priority: .low, state: .closed)
        let adapter = TodoFileDataAdapter(fileName: "todoFile.json")
        adapter.saveTask([todoTaskOne])
        if let taskTwo = adapter.loadTask() {
            print("\(taskTwo.description)")
            
        }
        //json file
 */
        
        
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
            
         
        }
    }
    
}
