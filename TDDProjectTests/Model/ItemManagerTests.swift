//
//  ItemManagerTests.swift
//  TDDProjectTests
//
//  Created by 山田良 on 2018/11/28.
//  Copyright © 2018 yamada.ryo. All rights reserved.
//

@testable import TDDProject
import XCTest

class ItemManagerTests: XCTestCase {
    var sut: ItemManager!

    override func setUp() {
        super.setUp()
        sut = ItemManager()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testToDoCount_Initially_ShouldBeZero() {
        XCTAssertEqual(sut.toDoCount, 0, "Initially toDo count should be 0.")
    }

    func testDoneCount_Initially_ShouldBeZero() {
        XCTAssertEqual(sut.doneCount, 0, "Inittially done count should be 0.")
    }

    func testToDoCount_AfterAddingOneItem_IsOne() {
        sut.addItem(ToDoItem(title: "Test title"))
        XCTAssertEqual(sut.toDoCount, 1, "toDo count should be 1.")
    }

    func testItemAtIndex_ShouldReturnPreviouslyAddedItem() {
        let item = ToDoItem(title: "Test title")
        sut.addItem(item)

        let returnedItem = sut.itemAtIndex(0)
        XCTAssertEqual(item.title, returnedItem.title, "should be the same item")
    }

    func testCheckingItem_ChangesCountOfTodoAndDoneItems() {
        sut.addItem(ToDoItem(title: "First title"))
        sut.checkItemAtIndex(0)

        XCTAssertEqual(sut.toDoCount, 0, "toDoCount should be 0")
        XCTAssertEqual(sut.doneCount, 1, "doneCount should be 1")
    }

    func testCheckingItem_RemovesItFromTheToDoItemList() {
        let firstItem = ToDoItem(title: "First")
        let secondItem = ToDoItem(title: "Second")
        sut.addItem(firstItem)
        sut.addItem(secondItem)
        sut.checkItemAtIndex(0)

        XCTAssertEqual(sut.itemAtIndex(0).title, secondItem.title)
    }

    func testDoneItemAtIndex_ShouldReturnPreviouslyCheckedItem() {
        let item = ToDoItem(title: "Item")
        sut.addItem(item)
        sut.checkItemAtIndex(0)

        let returnedItem = sut.doneItemAtIndex(0)
        XCTAssertEqual(item.title, returnedItem.title, "should be same item")
    }
}
