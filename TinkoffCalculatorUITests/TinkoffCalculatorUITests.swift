//
//  TinkoffCalculatorUITests.swift
//  TinkoffCalculatorUITests
//
//  Created by i.myakotin on 30.11.2023.
//

import XCTest

class TinkoffCalculatorUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func test_lecture9_buttonsExistance() {
        let buttons = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "C", "x", "/", "+", "-"]

        let app = XCUIApplication()
        app.launch()

        buttons.forEach {
            let button = app.buttons[$0]

            XCTAssertTrue(button.exists, "Не нашлась кнопка \($0).")
            XCTAssertTrue(button.isHittable, "Кнопка \($0) не нажимается.")
        }
    }
}
