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

    func testScorePositive() {
        let guess = (game?.target ?? Int()) + 10
        let score = game?.points(sliderValue: guess)
        XCTAssertEqual(score, 90)
    }
    
    func testScoreNegativetive() {
        let guess = (game?.target ?? Int()) - 5
        let score = game?.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }

}
