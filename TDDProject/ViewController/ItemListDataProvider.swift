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

extension ItemListDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows: Int
        switch section {
        case 0:
            numberOfRows = itemManager?.toDoCount ?? 0
        case 1:
            numberOfRows = itemManager?.doneCount ?? 0
        default:
            numberOfRows = 0
        }

        return numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
