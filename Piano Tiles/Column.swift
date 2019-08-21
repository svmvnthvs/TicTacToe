//
//  Column.swift
//  RockPaperScissors
//
//  Created by Samantha Leung on 2019-05-14.
//  Copyright © 2019 Samantha Leung. All rights reserved.
//

import Foundation

class Column {
    
    var tiles: [Tile] // max of 5
    
    init() {
        
        self.tiles = []
        
    }
    
    func addTile() {
        // creates new tile and adds to tiles
        let tile = Tile()
        tiles.append(tile)
        
    }
    
    func removeTile() {
        // removes passed or clicked tile
        tiles.remove(at: 0)
        
    }
    
    
    
}
