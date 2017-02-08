//
//  Zombie.swift
//  MonsterTown
//
//  Created by WuQiang on 2017/2/4.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
//    var walksWithLimp = true
//    private var isFallingApart = false
//    internal private(set) var isFallingApart = false
    
//    var walksWithLimp = true
    var walksWithLimp: Bool
//    private(set) var isFallingApart = false
    private(set) var isFallingApart: Bool
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
    
   final override func terrorizeTown() {
    if !isFallingApart {
        town?.changePopulation(by: -10)
    }
        super.terrorizeTown()
    }
}
