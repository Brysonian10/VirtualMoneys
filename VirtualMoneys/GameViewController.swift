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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.viewSwiped(gesture:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        imageView.addGestureRecognizer(swipeUp)
        
        }
    
    @objc
     func viewSwiped(gesture: UIGestureRecognizer)
    {
        if let swipedView = gesture.view
        {
            if swipedView.tag == 1
            {
                //animate up
                imageView.upSwipeAnimation()
            }
        }
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

extension UIView
{
    func upSwipeAnimation(Duration: TimeInterval = 0.2, completionDelegate: AnyObject? = nil)
    {
        //Create a CATransition object
        let upSwipeTransition = CATransition()
        
        
        //Set its callback delegate to the completionDelegate that was provided
        if let delegate: AnyObject = completionDelegate
        {
            upSwipeTransition.delegate = delegate as? CAAnimationDelegate
        }
        
        upSwipeTransition.type = CATransitionType.push
        upSwipeTransition.subtype = CATransitionSubtype.fromTop
        upSwipeTransition.duration = Duration
        upSwipeTransition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        upSwipeTransition.fillMode = CAMediaTimingFillMode.removed
        
        //Add the animation to the View's layer
        self.layer.add(upSwipeTransition, forKey: "upSwipeTransition")
    }
    
}
