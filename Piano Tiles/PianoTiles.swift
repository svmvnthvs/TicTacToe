//
//  PianoTiles.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-14.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import Foundation
// GAME

class PianoTiles {
    
    var columns: [Column]
    var score: Int
    var speed: Float
    
    
    init() {
        
        self.columns = []
        self.score = 0
        self.speed = 1.0
        
        for i in 0...2 {
            
            columns[i] = Column()
            
        }
        
    }
    
    func startGame() {
        
        // release the tiles
        // when score becomes a certain number we can increase the speed
        
    }
    
    func endGame() {
        
        // ends the game
        
    }
    
    func increaseScore() {
        
        score += 1
        
    }
    
}
