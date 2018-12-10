//
//  ItemListDataProvider.swift
//  TDDProject
//
//  Created by 山田良 on 2018/12/10.
//  Copyright © 2018 yamada.ryo. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject {}

extension ItemListDataProvider: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
