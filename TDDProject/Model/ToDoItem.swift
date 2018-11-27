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

    init(title: String, itemDescription: String? = nil) {
        self.title = title
        self.itemDescription = itemDescription
    }
}
