//
//  ViewController.swift
//  Assignment4
//
//  Created by tanaka on 2/19/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        //if let numberValue = numberValue {
            
        //}
            
    }

    @IBAction func saveButtonTouched(_ sender: UIBarButtonItem) {
        
        //code tosave or add new
        // navigate bage
        if descriptionInput.text != "" {
            TodoItemManager.instance.todoItems.append(TodoItem(description: descriptionInput.text!, emoji: "😃", priority: Priority.high,  state: true))
            descriptionInput.text = ""
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
}

