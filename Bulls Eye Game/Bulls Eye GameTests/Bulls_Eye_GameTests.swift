//
//  Bulls_Eye_GameTests.swift
//  Bulls Eye GameTests
//
//  Created by mac on 15/01/2021.
//

import XCTest
@testable import Bulls_Eye_Game

class Bulls_Eye_GameTests: XCTestCase {
    var game: Game?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(game?.points(sliderValue: 45), 99)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
