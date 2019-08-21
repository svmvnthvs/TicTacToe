//
//  ViewController2.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-14.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var TicTacToe: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var PianoTiles: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TicTacToe.frame.origin.x = view.frame.width/2 - TicTacToe.frame.width/2
        Label.frame.origin.x = view.frame.width/2 - Label.frame.width/2
        PianoTiles.frame.origin.x = view.frame.width/2 - PianoTiles.frame.width/2
        
        PianoTiles.layer.borderWidth = 2
        TicTacToe.layer.borderWidth = 2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
