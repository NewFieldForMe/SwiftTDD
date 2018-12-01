//
//  ToDoItem.swift
//  TDDProject
//
//  Created by yamada.ryo on 2018/11/27.
//  Copyright © 2018年 yamada.ryo. All rights reserved.
//

import Foundation

struct ToDoItem {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?

    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

extension ToDoItem: Equatable {
    static func == (lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        if lhs.location?.name == rhs.location?.name {
            return true
        }
        return false
    }
}
