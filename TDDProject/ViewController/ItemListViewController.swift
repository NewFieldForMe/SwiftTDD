//
//  ItemListViewController.swift
//  TDDProject
//
//  Created by 山田良 on 2018/12/02.
//  Copyright © 2018 yamada.ryo. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!

    override func viewDidLoad() {
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    }
}
