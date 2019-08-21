//
//  Game.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-08.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import Foundation
import UIKit

class Game {
    var board: Board
    var player1: Player
    var player2: Player
    var winningCases: [Int]
    var nextMove: (Int, Int)
    var currPlayer: Player
    var gameWon: Bool
    var counter: Int
    
    init(){
        board = Board()
        player1 = Player(playerNumber: 1, playerColour: UIColor.blue)
        player2 = Player(playerNumber: 2, playerColour: UIColor.magenta)
        winningCases = [Int](repeating: 0, count: 8)
        nextMove = (0, 0)
        currPlayer = player1
        gameWon = false
        counter = 0
    }
    
    func startGame() {
        // clear the board
        board.clear()
        winningCases = [Int](repeating: 0, count: 8)
        
    }
    
    func updateWinningCases(position: Int) {
        
        var temp = 0
        if (currPlayer === player1) {
            temp = 1
        } else {
            temp = -1
        }
        
        counter += 1
        
        switch (position) {
            
        case 1:
            winningCases[0] += temp
            winningCases[3] += temp
            winningCases[6] += temp
            
        case 2:
            winningCases[1] += temp
            winningCases[3] += temp
            
        case 3:
            winningCases[2] += temp
            winningCases[3] += temp
            winningCases[7] += temp
            
        case 4:
            winningCases[4] += temp
            winningCases[0] += temp
            
        case 5:
            winningCases[1] += temp
            winningCases[4] += temp
            winningCases[6] += temp
            winningCases[7] += temp
            
        case 6:
            winningCases[2] += temp
            winningCases[4] += temp
            
        case 7:
            winningCases[0] += temp
            winningCases[5] += temp
            winningCases[7] += temp
            
        case 8:
            winningCases[1] += temp
            winningCases[5] += temp
            
        case 9:
            winningCases[2] += temp
            winningCases[5] += temp
            winningCases[6] += temp
            
        default:
            // do nothing
            print("invalid move")
        }
        
        winningCheck()
        
    }
    
    func winningCheck() {
        for cases in winningCases {
            if (cases == 3) {
                // player 1 wins
                print("player 1 wins")
                gameWon = true
//                gameWon(player: "Player 1")
            } else if (cases == -3) {
                // player 2 wins
                print("player 2 wins")
                gameWon = true
//                gameWon(player: "Player 2")
            }
        }
    }
    

    func switchPlayer() {
        
        if (currPlayer === player1) {
            currPlayer = player2
        } else {
            currPlayer = player1
        }
        
    }

    
}
