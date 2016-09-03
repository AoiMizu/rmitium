//
//  UtilitiesPortal.swift
//  Rmitium
//
//  Created by Aoi Mizu on 8/10/16.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class UtilitiesPortal {
    //static let mainScene = GameScene(fileNamed:"GameScene")
    static let stateAnswer = 0
    static let stateResult = 1
    static let stateReview = 2
    static let stateInfo = 3
    static let stateFact = 4
    
    static let levelLabelNames = ["lvl01", "lvl02", "lvl03", "setting"]
    static let levelButtonNames = ["lvl01Btn", "lvl02Btn", "lvl03Btn", "settingBtn"]
    
    static let levelOneAnswers = ["phenol", "acid", "alcohol", "amine", "amide", "alkene",
                                  "aldehyde", "ester", "ether", "thioether", "heterocyclic aromatic"]
    
    static let levelThreeAnswers = ["dipole-dipole", "h-bonding", "ionic", "vanderwaals"]
    
    static let levelLabelTexts = ["Level 1: Identifying Functional Groups",
                                  "Level 2: Building Molecules",
                                  "Level 3: Intermolecular Forces", "SETTINGS"]
    
    static let settingLabelTexts = ["Sound", "Setting 2", "Setting 3"]
    static let settingLabelNames = ["sound", "setting02", "setting03"]
    static let settingLabelButtons = ["soundBtn", "setting02Btn", "setting03Btn"]
    
    static let emptyString = ""
    
    static let homeButtonName = "homeBtn"
    static let helpButtonName = "helpBtn"
    static let settingButtonName = "setting"
    static let tickButtonName = "tickBtn"
    static let showButtonName = "showBtn"
    static let nextButtonName = "nextBtn"
    static let infoButonName = "infoBtn"
    static let redoButtonName = "redo"
    static let shareButtonName = "share"
    static let backButtonName = "back"
    
    static let factLabelName = "factLbl"
    static let factOverlayName = "factOvl"
    static let factMultiLine = "factMultiLine"
    static let settingViewButtonName = "settingView"
   
    
    static let buttonLevelWidth: CGFloat = 1153
    static let buttonLevelHeight: CGFloat  = 317
    
    static let alphabet = ["A", "B", "C", "D", "E", "F", "G"] //HIJKLMNOPQRSTUVXYZ"
    
    static let infoArrowOneName = "arrow1"
    static let infoArrowTwoName = "arrow2"
    static let infoArrowThreeName = "arrow3"
    static let infoArrowFourName = "arrow4"
    
    static let screenSize: CGRect = UIScreen.mainScreen().bounds
    static let screenWidth = screenSize.width
    static let screenHeight = screenSize.height
    
    static let hexImageSize = screenHeight*0.15
    
    static let navLabelFont = "ArialRoundedMTBold"
    static let navLabelSize = CGFloat(screenWidth/25)
    static let navImgSize = screenHeight*0.10
    
    static let factFont = "ArialRoundedMTBold"
    static let factSize = CGFloat(screenWidth/35)
    static let scoreText = "Score:"
    
    static let levelLabelSize = CGFloat(screenWidth/30)
    static let levelLabelFont = "Avenir-Black"
    static let levelLabelAnswerSize = CGFloat(screenWidth/40)
    
    static let borderSize = CGFloat(screenWidth/15)
    
    static let imageWidth = screenWidth*0.6
    static let imageHeight = screenHeight*0.6
    
    static var score = 0
    static var record = [Int]()
}