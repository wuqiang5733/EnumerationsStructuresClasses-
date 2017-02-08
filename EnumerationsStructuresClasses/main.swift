//
//  main.swift
//  MonsterTown
//
//  Created by WuQiang on 2017/2/4.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import Foundation
/*
var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 500)

//myTown.printDescription()

//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool);")
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}  */
var myTown = Town(population: 0, stoplights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
print(myTownSize ?? "defaultValue")
myTown?.changePopulation(by: 1_000_000)
print("Size: \(myTown?.townSize);population: \(myTown?.population)")

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()
fredTheZombie = nil

