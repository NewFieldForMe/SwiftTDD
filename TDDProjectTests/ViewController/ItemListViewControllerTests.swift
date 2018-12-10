//
//  ItemListViewControllerTests.swift
//  TDDProjectTests
//
//  Created by 山田良 on 2018/12/02.
//  Copyright © 2018 yamada.ryo. All rights reserved.
//

import XCTest
@testable import TDDProject

class ItemListViewControllerTests: XCTestCase {
    var sut: ItemListViewController!

    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController

        _ = sut.view
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testViewDidLoad_TableViewIsNotNilAfterViewDidLoad() {
        XCTAssertNotNil(sut.tableView)
        XCTAssertTrue(sut.tableView?.dataSource is ItemListDataProvider)
    }

    func testViewDidLoad_ShouldSetTableViewDelegate() {
        XCTAssertNotNil(sut.tableView.delegate)
        XCTAssertTrue(sut.tableView?.delegate is ItemListDataProvider)
    }

    func testViewDidLoad_ShouldSetDelegateAndDataSourceToTheSameObject() {
        XCTAssertEqual(sut.tableView.delegate as? ItemListDataProvider, sut.tableView.dataSource as? ItemListDataProvider)
    }
}
