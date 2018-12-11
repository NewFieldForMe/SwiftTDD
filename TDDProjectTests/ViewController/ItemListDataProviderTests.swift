//
//  ItemListDataProviderTests.swift
//  TDDProjectTests
//
//  Created by yamada.ryo on 2018/12/11.
//  Copyright © 2018年 yamada.ryo. All rights reserved.
//

import XCTest
@testable import TDDProject

class ItemListDataProviderTests: XCTestCase {
    var sut: ItemListDataProvider!
    var tableView: UITableView!
    
    override func setUp() {
        super.setUp()

        sut = ItemListDataProvider()
        sut.itemManager = ItemManager()

        tableView = UITableView()
        tableView.dataSource = sut
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testNumberOfSections_isTwo() {
        let numberOfSections = tableView.numberOfSections
        XCTAssertEqual(numberOfSections, 2)
    }

    func testNumberRowsInFirstSection_IsToDoCount() {
        sut.itemManager?.addItem(ToDoItem(title: "First"))
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)

        sut.itemManager?.addItem(ToDoItem(title: "Second"))
        tableView.reloadData()
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
    }

    func testNumberRowsInSecondSection_IsDoneCount() {
        sut.itemManager?.addItem(ToDoItem(title: "First"))
        sut.itemManager?.addItem(ToDoItem(title: "Second"))
        sut.itemManager?.checkItemAtIndex(0)
        XCTAssertEqual(tableView.numberOfRows(inSection: 1), 1)

        sut.itemManager?.checkItemAtIndex(0)
        tableView.reloadData()
        XCTAssertEqual(tableView.numberOfRows(inSection: 1), 2)
    }
}
