//
//  todoJSON.swift
//  Assignment4
//
//  Created by Student on 2/26/19.
//  Copyright © 2019 tanaka. All rights reserved.
//
/*
import Foundation
import UIKit


struct todoCodable: Codable {
    var description: String
    var emoji: String
    var priority: Priority? = nil
    var state: State? = nil
    enum CodingKeys: String, CodingKey {
        case description
        case emoji
        case priority
        case state
    }
}



class TodoFileDataAdapter {
    private var fileName: String
    
    init(fileName: String){
        self.fileName = fileName
    }
    
    
    func saveTask(_ task: todoCodable){
        let jsonEncoder = JSONEncoder()
        do{
            let jsonData = try JSONEncoder.encode(task)
    }
        catch{
            print("error encoding")
        }
    }
    
    func loadTask() -> todoCodable? {
        return nil
    }
}
*/



