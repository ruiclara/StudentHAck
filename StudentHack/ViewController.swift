//
//  ViewController.swift
//  StudentHack
//
//  Created by Rui Teixeira on 01/11/14.
//  Copyright (c) 2014 ruiteixeira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var bloodBar: UIImageView!
    @IBOutlet var happynessBar: UIImageView!
    
    @IBOutlet var carButton: UIButton!
    @IBOutlet var garlicButton: UIButton!
    @IBOutlet var foodButton: UIButton!
    @IBOutlet var sleepButton: UIButton!
    
    @IBOutlet var vampireImageView: UIImageView!
    @IBOutlet var extraImageView: UIImageView!
    
    var v : Vampire = Vampire()
    var parseLoader : ParseLoader!
    var configObject : PFConfig!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = NSTimer(timeInterval: 10, target: self, selector: "updateUI", userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
        self.parseLoader = ParseLoader()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        updateBloodBar()
        updateHappynessBar()
        updateVampire()
        initializeButtons()
    }

    func updateBloodBar() {
        let bloodLevel = 100-v.hunger
        switch bloodLevel {
        case 0:
            self.bloodBar.image = self.parseLoader.bloodbar0
            break
        case 20:
            self.bloodBar.image = self.parseLoader.bloodbar20
            break
        case 40:
            self.bloodBar.image = self.parseLoader.bloodbar40
            break
        case 60:
            self.bloodBar.image = self.parseLoader.bloodbar60
            break
        case 80:
            self.bloodBar.image = self.parseLoader.bloodbar80
            break
        case 100:
            self.bloodBar.image = self.parseLoader.bloodbar100
            break
        default:
            break
        }
    }
    
    func updateHappynessBar() {
        let happynessLevel = 100
        switch happynessLevel {
        case 0:
            self.happynessBar.image = self.parseLoader.happinessBar0
            break
        case 20:
            self.happynessBar.image = self.parseLoader.happinessBar20
            break
        case 40:
            self.happynessBar.image = self.parseLoader.happinessBar40
            break
        case 60:
            self.happynessBar.image = self.parseLoader.happinessBar60
            break
        case 80:
            self.happynessBar.image = self.parseLoader.happinessBar80
            break
        case 100:
            self.happynessBar.image = self.parseLoader.happinessBar100
            break
        default:
            break
        }
    }
    
    func updateVampire() {
        // Vampire State
        if self.v.isSleeping {
            vampireImageView.image = self.parseLoader.sleepFace
        }
        else if self.v.inCar {
            vampireImageView.image = self.parseLoader.drivingFace
        }
        else if self.v.isGarlicOn {
            vampireImageView.image = self.parseLoader.garlicScared
        }
        else if self.v.hunger >= 60 {
            vampireImageView.image = self.parseLoader.hungryFace
        }
        else if self.v.isFoodOn {
            vampireImageView.image = self.parseLoader.fedFace
            self.v.isFoodOn = false
        }
        else {
            vampireImageView.image = self.parseLoader.brightnessHappy
        }
        
        // Extra state
        if self.v.killed {
            extraImageView.image = self.parseLoader.deadHuman1
            self.v.killed = false
        }
        else if extraImageView.image == self.parseLoader.deadHuman1 {
            extraImageView.image = nil
        }
    }
    
    func initializeButtons() {
        carButton.setImage(self.parseLoader.drivingIcon, forState: .Normal)
        carButton.addTarget(self, action: "carButtonPressed", forControlEvents: .TouchUpInside)
        garlicButton.setImage(self.parseLoader.garlic, forState: .Normal)
        garlicButton.addTarget(self, action: "garlicButtonPressed", forControlEvents: .TouchUpInside)
        foodButton.setImage(self.parseLoader.bloodPackIcon, forState: .Normal)
        foodButton.addTarget(self, action: "foodButtonPressed", forControlEvents: .TouchUpInside)
        sleepButton.setImage(self.parseLoader.sleepFace, forState: .Normal)
        sleepButton.addTarget(self, action: "sleepButtonPressed", forControlEvents: .TouchUpInside)
    }
    
    func carButtonPressed() {
        self.v.inCar = !self.v.inCar
        if self.v.inCar {
            self.v.increaseHappyness()
            self.parseLoader.autoTraderSongPlayer?.play()
        }
        else {
            self.parseLoader.autoTraderSongPlayer?.stop()
        }
        updateUI()
            
    }
    
    func garlicButtonPressed() {
        self.v.isGarlicOn = !self.v.isGarlicOn
        if self.v.isGarlicOn {
            self.extraImageView.image = self.parseLoader.garlic
        }
        else {
            self.extraImageView.image = nil
        }
        updateUI()
    }
    
    func foodButtonPressed() {
        self.v.feed()
        self.v.isFoodOn = !self.v.isFoodOn
        if self.v.isFoodOn {
            self.extraImageView.image = self.parseLoader.bloodPack
        }
        else {
            self.extraImageView.image = nil
        }
        updateUI()
    }
    
    func sleepButtonPressed() {
        self.v.isSleeping = !self.v.isSleeping
        updateUI()
    }

}

