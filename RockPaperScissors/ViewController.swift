//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-08.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var HomeScreen: UIButton!
    
    
    
    @IBAction func Button1(_ sender: Any) {
        if (game.board.board[0][0] == 0)  {
            game.board.move(player: game.currPlayer, x: 0, y: 0)
            Button1.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 1)
            allert(winning: game.gameWon)
            game.switchPlayer()
            
        }
    }
    
    @IBAction func Button2(_ sender: Any) {
        if (game.board.board[1][0] == 0)  {
            game.board.move(player: game.currPlayer, x: 1, y: 0)
            Button2.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 2)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    @IBAction func Button3(_ sender: Any) {
        if (game.board.board[2][0] == 0)  {
            game.board.move(player: game.currPlayer, x: 2, y: 0)
            Button3.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 3)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    @IBAction func Button4(_ sender: Any) {
        if (game.board.board[0][1] == 0)  {
            game.board.move(player: game.currPlayer, x: 0, y: 1)
            Button4.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 4)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    @IBAction func Button5(_ sender: Any) {
        if (game.board.board[1][1] == 0)  {
            game.board.move(player: game.currPlayer, x: 1, y: 1)
            Button5.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 5)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    @IBAction func Button6(_ sender: Any) {
        if (game.board.board[2][1] == 0)  {
            game.board.move(player: game.currPlayer, x: 2, y: 1)
            Button6.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 6)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    @IBAction func Button7(_ sender: Any) {
        if (game.board.board[0][2] == 0)  {
            game.board.move(player: game.currPlayer, x: 0, y: 2)
            Button7.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 7)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    @IBAction func Button8(_ sender: Any) {
        if (game.board.board[1][2] == 0)  {
            game.board.move(player: game.currPlayer, x: 1, y: 2)
            Button8.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 8)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    
    @IBAction func Button9(_ sender: Any) {
        if (game.board.board[2][2] == 0)  {
            game.board.move(player: game.currPlayer, x: 2, y: 2)
            Button9.backgroundColor = game.currPlayer.playerColour
            game.updateWinningCases(position: 9)
            allert(winning: game.gameWon)
            game.switchPlayer()
        }
    }
    
    

    
    @IBAction func resetButton(_ sender: Any) {
        reset()
        
    }
    
    func allert(winning: Bool) {
        
        var rootViewController: UIViewController? { return self }
            
        if(winning && (game.counter <= 9)) {
            let popup = UIAlertController(title: "Player" + String(game.currPlayer.playerNumber) + " Wins", message: "Would you like to start a new game?", preferredStyle: .alert)

            let action = UIAlertAction(title: "Yes", style: .default, handler: { (action:UIAlertAction) in self.reset()

            })

            popup.addAction(action)

            UIApplication.shared.keyWindow?.rootViewController?.presentedViewController?.present(popup, animated: true) {

                print("skkrrtttttttttttt")

            }
        } else if (!winning && (game.counter == 9)) {
            let popup = UIAlertController(title: "Tie Game!", message: "Would you like to start a new game?", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Yes", style: .default, handler: { (action:UIAlertAction) in self.reset()
                
            })
            
            popup.addAction(action)
            
            UIApplication.shared.keyWindow?.rootViewController?.presentedViewController?.present(popup, animated: true) {
                
                print("skkrrtttttttttttt failed")
                
            }
        }

        
    }
    
    func reset() {
        game = Game()
        Button1.backgroundColor = UIColor.white
        Button2.backgroundColor = .clear
        Button3.backgroundColor = .clear
        Button4.backgroundColor = .clear
        Button5.backgroundColor = .clear
        Button6.backgroundColor = .clear
        Button7.backgroundColor = .clear
        Button8.backgroundColor = .clear
        Button9.backgroundColor = .clear
    }
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        stackView.frame.origin.x = view.frame.width/2 - stackView.frame.width/2
        stackView.frame.origin.y = view.frame.height/2 - stackView.frame.height/2
        
        resetButton.frame.origin.x = view.frame.width/2 - resetButton.frame.width/2
        HomeScreen.frame.origin.x = view.frame.width/2 - HomeScreen.frame.width/2
        
        Button1.layer.borderWidth = 2
        Button2.layer.borderWidth = 2
        Button3.layer.borderWidth = 2
        Button4.layer.borderWidth = 2
        Button5.layer.borderWidth = 2
        Button6.layer.borderWidth = 2
        Button7.layer.borderWidth = 2
        Button8.layer.borderWidth = 2
        Button9.layer.borderWidth = 2
        HomeScreen.layer.borderWidth = 2
        resetButton.layer.borderWidth = 2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

