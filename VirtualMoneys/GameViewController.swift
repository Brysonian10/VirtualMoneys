//
//  GameViewController.swift
//  VirtualMoneys
//
//  Created by Spaulding, Bryson on 12/11/18.
//  Copyright © 2018 Bryson Spaulding. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //heightConstraint.constant = 0.3 * superView.height + 0
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
//    override func viewDidLayoutSubviews()
//    {
//        super.viewDidLayoutSubviews()
//
//        let yConstraint = NSLayoutConstraint(item: imageView, attribute .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: view.bounds.height / 3)
//
//        let xConstraint = NSLayoutConstraint(item: imageView, attribute: .Leading, relatedBy: .equal, toItem: view, attribute: .Leading, multiplier: 1, constant: 30)
//
//        NSLayoutConstraint.activeConstraints([yConstraint, xConstraint])
//    }
    
}
