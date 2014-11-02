//
//  File.swift
//  StudentHack
//
//  Created by Rui Teixeira on 01/11/14.
//  Copyright (c) 2014 ruiteixeira. All rights reserved.
//

import Foundation

class Vampire {
    let MAX_HUNGER : Int = 100 // THERE ARE NO LIMITS TO MY HUNGER
    let MAX_HAPPYNESS : Int = 100
    let MIN_HAPPYNESS : Int = 0
    let TIMER_INTERVAL : NSTimeInterval = 10
    
    var happyness : Int
    var hunger : Int
    var lastFeedingTime : NSDate
    var hungerTimer : NSTimer!
    var inCar : Bool
    var isGarlicOn : Bool
    var isSleeping : Bool
    var isFoodOn : Bool
    var killed : Bool
    
    let increaseHungerSelector : Selector = "increaseHunger"
    
    init() {
        self.happyness = 0
        self.hunger = 20
        self.inCar = false
        self.isGarlicOn = false
        self.isSleeping = false
        self.isFoodOn = false
        self.killed = false
        self.lastFeedingTime = NSDate()
        initHungerTimer()
    }
    
    // This needs to be ran right after init
    func initHungerTimer() {
        self.hungerTimer?.invalidate()
        self.hungerTimer = NSTimer(timeInterval: self.TIMER_INTERVAL, target: self, selector: "increaseHunger", userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(self.hungerTimer, forMode: NSRunLoopCommonModes)
    }
    
    //
    @objc func increaseHunger() {
        println("Increse Hunger!")
        if self.hunger >= self.MAX_HUNGER {
            kill();
        }
        else {
            self.hunger += 20
            let randomNumber : Int = Int(arc4random()) % self.MAX_HUNGER
            // The more hungry he is the higher the probably to killå
            if(randomNumber <= self.hunger) {
                kill()
            }
        }
    }
    
    func kill() {
        println("Killing an Innocent at \(self.hunger)")
        killed = true
        if self.hunger <= self.MAX_HUNGER-20 {
            self.hunger -= 20;
        }
        self.initHungerTimer();
    }
    
    func feed() {
        self.hunger = 0;
        self.initHungerTimer();
    }
    
    func increaseHappyness() {
        if happyness <= MAX_HAPPYNESS - 20 {
            happyness += 20
        }
    }
    
    func decreaseHappyness() {
        if happyness >= 20 {
            happyness -= 20
        }
    }
}