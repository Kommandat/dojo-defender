//
//  GameViewController.swift
//  dojo-defender
//
//  Created by Lakshay on 3/8/16.
//  Copyright (c) 2016 Lakshay Akula. All rights reserved.
//  Adapted from Ray Wenderlich's Sprite Kit 2 tutorial
//
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = MainMenuScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
