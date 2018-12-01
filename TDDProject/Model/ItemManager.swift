//
//  ItemManager.swift
//  TDDProject
//
//  Created by 山田良 on 2018/11/28.
//  Copyright © 2018 yamada.ryo. All rights reserved.
//

import Foundation

class ItemManager {
    var toDoCount: Int { return todoItems.count }
    var doneCount: Int { return doneItems.count }
    private var todoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()

    func addItem(_ item: ToDoItem) {
        if !todoItems.contains(item) {
            todoItems.append(item)
        }
    }

    func itemAtIndex(_ index: Int) -> ToDoItem {
        return todoItems[index]
    }

    func checkItemAtIndex(_ index: Int) {
        let item = todoItems.remove(at: index)
        doneItems.append(item)
    }

    func doneItemAtIndex(_ index: Int) -> ToDoItem {
        return doneItems[index]
    }

    func removeAllItems() {
        todoItems.removeAll()
        doneItems.removeAll()
    }
}
