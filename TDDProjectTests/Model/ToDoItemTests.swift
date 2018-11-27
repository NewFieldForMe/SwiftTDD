//
//  ToDoItemTests.swift
//  TDDProjectTests
//
//  Created by yamada.ryo on 2018/11/27.
//  Copyright © 2018年 yamada.ryo. All rights reserved.
//

import XCTest
@testable import TDDProject

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testInit_ShouldTakeTitle() {
        let item = ToDoItem(title: "Test title")
        XCTAssertEqual(item.title, "Test title",
                       "Initializer should set the item title")
    }

    func testInit_ShouldSetTitleAndDescription() {
        let item = ToDoItem(title: "Test title",
                            itemDescription: "Test description")
        XCTAssertEqual(item.itemDescription , "Test description",
                       "Initializer should set the item description")
    }

    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        let item = ToDoItem(title: "Test title",
                            itemDescription: "Test description",
                            timestamp: 0.0)
        XCTAssertEqual(0.0, item.timestamp,
                       "Initializer should set the time stamp")
    }

    func testInit_ShouldSetTitleAndDescriptionAndTimestampAndLocation() {
        let location = Location(name: "Test name")
        let item = ToDoItem(title: "Test title",
                            itemDescription: "Test description",
                            timestamp: 0.0,
                            location: location)
        XCTAssertEqual(location.name, item.location?.name,
                       "Initializer should set the location")
    }
}