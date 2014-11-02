//
//  ParseLoader.swift
//  StudentHack
//
//  Created by Rui Teixeira on 01/11/14.
//  Copyright (c) 2014 ruiteixeira. All rights reserved.
//

import Foundation
import AVFoundation

class ParseLoader {
    var annoyedFace : UIImage?
    
    var drivingFace : UIImage?
    var fedFace : UIImage?
    var hungryFace : UIImage?
    var sleepFace : UIImage?
    var wakeUpYoFace : UIImage?
    var dead : UIImage?
    var garlicScared : UIImage?
    
    
    var autoTraderSongPlayer : AVAudioPlayer?
    
    var background : UIImage?
    var bloodbar0 : UIImage?
    var bloodbar20 : UIImage?
    var bloodbar40 : UIImage?
    var bloodbar60 : UIImage?
    var bloodbar80 : UIImage?
    var bloodbar100 : UIImage?
    
    var bloodPack : UIImage?
    var bloodPackIcon : UIImage?
    
    var brightnessHappy : UIImage?
    
    var deadHuman1 : UIImage?
    var deadHuman2 : UIImage?
    var deadHuman3 : UIImage?
    var deadHuman4 : UIImage?
    
    var drivingIcon : UIImage?
    
    var garlic : UIImage?
    var garlicIcon : UIImage?
    
    var happinessBar0 : UIImage?
    var happinessBar20 : UIImage?
    var happinessBar40 : UIImage?
    var happinessBar60 : UIImage?
    var happinessBar80 : UIImage?
    var happinessBar100 : UIImage?
    
    var helpButton : UIImage?
    var quitButton : UIImage?
    var restart : UIImage?
    
    var scaredHuman1 : UIImage?
    var scaredHuman2 : UIImage?
    var scaredHuman3 : UIImage?
    var scaredHuman4 : UIImage?
    
    var title : UIImage?
    
    init() {
        PFConfig.getConfigInBackgroundWithBlock {(configObject, error) -> Void in
            var file = configObject["AnnoyedFace"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.annoyedFace = UIImage(data: data)
            })
            
            file = configObject["DrivingFace"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.drivingFace = UIImage(data: data)
            })
            
            file = configObject["FedFace"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.fedFace = UIImage(data: data)
            })
            
            file = configObject["HungryFace"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.hungryFace = UIImage(data: data)
            })
            
            file = configObject["SleepFace"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.sleepFace = UIImage(data: data)
            })
            
            file = configObject["ani"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.wakeUpYoFace = UIImage(data: data)
            })
            
            file = configObject["Dead"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.dead = UIImage(data: data)
            })
            
            file = configObject["BrightnessPutCapeAround"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.garlicScared = UIImage(data: data)
            })
            
            file = configObject["Background"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.background = UIImage(data: data)
            })
            
            file = configObject["BloodBar0"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodbar0 = UIImage(data: data)
            })
            
            file = configObject["BloodBar20"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodbar20 = UIImage(data: data)
            })
            
            file = configObject["BloodBar40"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodbar40 = UIImage(data: data)
            })
            
            file = configObject["BloodBar60"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodbar60 = UIImage(data: data)
            })
            
            file = configObject["BloodBar80"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodbar80 = UIImage(data: data)
            })
            
            file = configObject["BloodBar100"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodbar100 = UIImage(data: data)
            })
            
            file = configObject["BrightnessPutCapeAround"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.garlicScared = UIImage(data: data)
            })
            
            file = configObject["BloodPack"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodPack = UIImage(data: data)
            })
            
            file = configObject["BloodPackIcon"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.bloodPackIcon = UIImage(data: data)
            })
            
            file = configObject["BrightnessHappy"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.brightnessHappy = UIImage(data: data)
            })
            
            file = configObject["DeadHuman1"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.deadHuman1 = UIImage(data: data)
            })
            
            file = configObject["DeadHuman2"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.deadHuman2 = UIImage(data: data)
            })
            
            file = configObject["DeadHuman3"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.deadHuman3 = UIImage(data: data)
            })
            
            file = configObject["DeadHuman4"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.deadHuman4 = UIImage(data: data)
            })
            
            file = configObject["DrivingIcon"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.drivingIcon = UIImage(data: data)
            })
            
            file = configObject["Garlic"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.garlic = UIImage(data: data)
            })
            
            file = configObject["GarlicIcon"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.garlicIcon = UIImage(data: data)
            })
            
            file = configObject["HappinessBar0"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.happinessBar0 = UIImage(data: data)
            })
            
            file = configObject["HappinessBar20"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.happinessBar20 = UIImage(data: data)
            })
            
            file = configObject["HappinessBar40"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.happinessBar40 = UIImage(data: data)
            })
            
            file = configObject["HappinessBar60"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.happinessBar60 = UIImage(data: data)
            })
            
            file = configObject["HappinessBar80"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.happinessBar80 = UIImage(data: data)
            })
            
            file = configObject["HappinessBar100"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.happinessBar100 = UIImage(data: data)
            })
            
            file = configObject["HelpButton"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.helpButton = UIImage(data: data)
            })
            
            file = configObject["QuitButton"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.quitButton = UIImage(data: data)
            })
            
            file = configObject["Restart"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.restart = UIImage(data: data)
            })
            
            file = configObject["ScaredHuman1"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.scaredHuman1 = UIImage(data: data)
            })
            
            file = configObject["ScaredHuman2"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.scaredHuman2 = UIImage(data: data)
            })
            
            file = configObject["ScaredHuman3"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.scaredHuman3 = UIImage(data: data)
            })
            
            file = configObject["ScaredHuman4"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.scaredHuman4 = UIImage(data: data)
            })
            
            file = configObject["Title"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                self.title = UIImage(data: data)
            })
            
            file = configObject["AutoTraderSong"] as? PFFile
            file?.getDataInBackgroundWithBlock({(data, error) -> Void in
                var err : NSErrorPointer = nil
                self.autoTraderSongPlayer = AVAudioPlayer(data: data, error: err)
            })
        }
    }
}