//
//  Util.swift
//  Assignment4
//
//  Created by Student on 2/25/19.
//  Copyright © 2019 tanaka. All rights reserved.
//

import Foundation
extension Array {
    
    func isValidIndex(_ index: Int) ->Bool {
        return index >= 0 && index < self.count
    }
}
