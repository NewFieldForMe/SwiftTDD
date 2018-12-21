//
//  ItemListDataProvider.swift
//  TDDProject
//
//  Created by 山田良 on 2018/12/10.
//  Copyright © 2018 yamada.ryo. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject {
    var itemManager: ItemManager?
}

enum Section: Int {
    case ToDo
    case Done
}

extension ItemListDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let itemManager = itemManager else { return 0 }
        guard let itemSection = Section(rawValue: section) else { return 0 }

        let numberOfRows: Int
        switch itemSection {
        case .ToDo:
            numberOfRows = itemManager.toDoCount
        case .Done:
            numberOfRows = itemManager.doneCount
        }

        return numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell

        guard let itemManager = itemManager else { fatalError() }
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }

        let item: ToDoItem
        switch section {
        case .ToDo:
            item = itemManager.itemAtIndex(indexPath.row)
        case .Done:
            item = itemManager.doneItemAtIndex(indexPath.row)
        }
        cell.configCellWithItem(item: item)

        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}

extension ItemListDataProvider: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }

        switch section {
        case .ToDo:
            return "Check"
        case .Done:
            return "Uncheck"
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        guard let itemManager = itemManager, let section = Section(rawValue: indexPath.section) else { fatalError() }

        switch section {
        case .ToDo:
            itemManager.checkItemAtIndex(indexPath.row)
        case .Done:
            itemManager.uncheckItemAtIndex(indexPath.row)
        }
        tableView.reloadData()
    }
}
