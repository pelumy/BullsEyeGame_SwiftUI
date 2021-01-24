//
//  Game.swift
//  Bulls Eye Game
//
//  Created by mac on 17/01/2021.
//

import Foundation

struct Game {
    var score = 0
    var rounds = 1
    var target = Int.random(in: 1..<100)
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
    
    mutating func startNewRound(points: Int) {
        score += 100
        rounds += 1
    }
}
