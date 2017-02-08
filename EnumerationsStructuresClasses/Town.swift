//
//  Town.swift
//  MonsterTown
//
//  Created by WuQiang on 2017/2/4.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int{
        didSet(oldPopulation) {
            print("WQ_The population has changed to \(population)from \(oldPopulation).")
        } }
    
    var numberOfStoplights:Int
    
    init?(region: String, population: Int, stoplights: Int) {
        guard population > 0 else {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    init?(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size  {
        get{
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }
}

    func printDescription() {
        print("Population: \(population)number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
    
}
