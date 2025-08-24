//
//  DrinkWaterUITests.swift
//  DrinkWaterUITests
//
//  Created by Ann Ubaka on 8/23/25.
//

import XCTest

final class DrinkWaterUITests: XCTestCase {
    func testToggle() throws {
        let app = XCUIApplication()
        app.launch()

        let button = app.buttons["toggleButton"]
        XCTAssertTrue(button.exists)

        XCTAssertEqual(button.label, "Parched.")
        XCTAssertEqual(button.value as? String, "parched")

        button.tap()
        XCTAssertEqual(button.label, "Hydrated.")
        XCTAssertEqual(button.value as? String, "hydrated")

        button.tap()
        XCTAssertEqual(button.label, "Parched.")
        XCTAssertEqual(button.value as? String, "parched")
    }
}

