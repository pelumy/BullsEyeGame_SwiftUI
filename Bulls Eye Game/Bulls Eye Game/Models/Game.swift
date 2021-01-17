//
//  Game.swift
//  Bulls Eye Game
//
//  Created by mac on 17/01/2021.
//

import Foundation

struct Game {
    var score: Int = 0
    var rounds: Int = 1
    var target: Int = Int.random(in: 1..<100)
    
    func points(sliderValue: Int) -> Int {
        return 99
    }
}
