//
//  todoJSON.swift
//  Assignment4
//
//  Created by Student on 2/26/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation


class TodoFileDataAdapter {
    private var fileName: String
    private var fileURL: URL? {
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            return dir.appendingPathComponent(fileName)
        }else{
            return nil
        }
    }
    
    init(fileName: String){
        self.fileName = fileName
    }
    
    
    func saveTask(_ tasks: [TodoItem]) {
        
        do{
            let jsonDecoder = JSONEncoder()
            let jsonData = try jsonDecoder.encode(tasks)
            if let fileURL = self.fileURL {
                try jsonData.write(to: fileURL)
            }
    }
        catch{
            print("error encoding")
        }
    }
    
    func loadTask() -> [TodoItem]? {
        do {
            let jsonDecoder = JSONDecoder()
            if let fileURL = self.fileURL {
                let data = try Data(contentsOf: fileURL)
                return try jsonDecoder.decode([TodoItem].self, from: data)
            } else {
                return nil
            }
        }
            catch {
                return nil
            }
        
       
    }
}




