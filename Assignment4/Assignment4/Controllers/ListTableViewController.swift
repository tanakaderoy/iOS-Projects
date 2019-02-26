//
//  ListTableViewController.swift
//  Assignment4
//
//  Created by tanaka on 2/19/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warni5g Incomplete implementation, return the number of rows
        return TodoItemManager.instance.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as? ItemTableViewCell else{
            preconditionFailure("Failed find cell. Check ids")
        }
        if let todoItem = TodoItemManager.instance.todoItemAtIndex(indexPath.row){
            cell.labelDescription.text = "Description: \(todoItem.description)"
            cell.labelEmoji.text = "Emoji: \(todoItem.emoji)"
            cell.labelPriority.text = "Priority: \(todoItem.priority)"
            cell.labelState.text = "Status: \(todoItem.state)"
        }else{
            
        }
       
        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            TodoItemManager.instance.todoItems.remove(at: indexPath.row)
        }
        tableView.reloadData()
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if let vc = segue.destination as? ViewController {
        
            if let cell = sender as? UITableViewCell {
                if let indexPath = tableView.indexPath(for: cell) {
                    //vc.numberValue = "\(indexPath.row)"
                   /* if let selectedIndexPath = tableView.indexPathForSelectedRow {
                        TodoItemManager.instance.todoItems[selectedIndexPath.row] = TodoItem(description: (TodoItemManager.instance.todoItemAtIndex(selectedIndexPath.row)?.description)!, emoji: "s", priority: Priority.high, state: false)
                        tableView.reloadData()
                    }else{
                        
                    }*/
                    
                    
                    
                }
                
            }
            
            
            if let _ = sender as? UIBarButtonItem {
                //vc.numberValue = "-1"
                
            }
            
        }
        
    }
    

}
