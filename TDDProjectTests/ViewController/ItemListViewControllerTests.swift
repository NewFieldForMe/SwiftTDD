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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_TableViewIsNotNilAfterViewDidLoad() {
        let sut = ItemListViewController()
        _ = sut.view
        XCTAssertNotNil(sut.tableView)
    }
}
