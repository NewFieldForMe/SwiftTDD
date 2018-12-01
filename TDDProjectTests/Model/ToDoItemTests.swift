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

    func testEqualItems_ShouldBeEqual() {
        let firstItem = ToDoItem(title: "First Item")
        let secondItem = ToDoItem(title: "First Item")

        XCTAssertEqual(firstItem, secondItem)
    }

    func testWhenLocationDiffers_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description",
                                 timestamp: 0.0,
                                 location: Location(name: "Home"))
        let secondItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description",
                                 timestamp: 0.0,
                                 location: Location(name: "Office"))
        XCTAssertNotEqual(firstItem, secondItem)
    }

    func testWhenOneLocationIsNilAndTheOtherIsnt_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description",
                                 timestamp: 0.0,
                                 location: nil)
        let secondItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description",
                                 timestamp: 0.0,
                                 location: Location(name: "Office"))
        XCTAssertNotEqual(firstItem, secondItem)
    }

    func testWhenTimestampDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description",
                                 timestamp: 1.0)
        let secnodItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description",
                                 timestamp: 0.0)
        XCTAssertNotEqual(firstItem, secnodItem)
    }

    func testWhenDescriptionDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First Title",
                                 itemDescription: "First Description")
        let secondItem = ToDoItem(title: "First Title",
                                 itemDescription: "Second Description")
        XCTAssertNotEqual(firstItem, secondItem)
    }

    func testWhenTitleDiffers_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First Title")
        let secondItem = ToDoItem(title: "Second Title")
        XCTAssertNotEqual(firstItem, secondItem)
    }
}
