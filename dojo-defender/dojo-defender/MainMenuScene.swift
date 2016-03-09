//
//  MainMenuScene.swift
//  dojo-defender
//
//  Created by Lakshay on 3/8/16.
//  Copyright © 2016 Lakshay Akula. All rights reserved.
//

import Foundation

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.whiteColor()
        
        let message = "Welcome to Dojo Defender!"
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.blackColor()
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        // 4
        runAction(SKAction.sequence([
            SKAction.waitForDuration(3.0),
            SKAction.runBlock() {
                // 5
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = GameScene(size: self.size, level: 1, points: 0)
                self.view?.presentScene(scene, transition:reveal)
            }
        ]))
    }
}