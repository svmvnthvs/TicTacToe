//
//  ViewController3.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-14.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var HomeScreen3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HomeScreen3.frame.origin.x = view.frame.width/2 - HomeScreen3.frame.width/2
        
        HomeScreen3.layer.borderWidth = 2

        // Do any additional setup after loading the view.
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
