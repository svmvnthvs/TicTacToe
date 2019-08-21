//
//  Board.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-08.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import Foundation

class Board {
    
    var board: [[Int]]
   
    init() {
        
        board = [[Int]](repeating: Array(repeating: 0, count: 3), count: 3)
        
    }
    
    func clear() {
        
        board = [[Int]] (repeating: Array(repeating: 0, count: 3), count: 3)
        
    }
    
    func move(player: Player, x: Int, y: Int) {
        board[x][y] = player.playerNumber
        print("board" + String(x) + ", " + String(y))
    }
    
}
