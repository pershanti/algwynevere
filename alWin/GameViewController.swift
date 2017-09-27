//
//  GameViewController.swift
//  alWin
//
//  Created by Shantini Vyas on 9/20/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import Foundation
//
//  GameViewController.swift
//  alWin
//
//  Created by Shantini Vyas on 9/19/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//
import UIKit
import SpriteKit
import GameplayKit
import CoreData

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene()
        scene.viewController = self
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        scene.anchorPoint =  CGPoint(x: 0.5, y: 0.5)
        scene.size = skView.bounds.size
        skView.presentScene(scene)
        
    }
    
    func secondScene(){
        let scene = SecondGameScene()
        scene.viewController = self
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        scene.anchorPoint =  CGPoint(x: 0.5, y: 0.5)
        scene.size = skView.bounds.size
        skView.presentScene(scene)
        
    }
    
    
    func  thirdScene(){
        let scene = ThirdGameScene()
        scene.viewController = self
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        scene.anchorPoint =  CGPoint(x: 0.5, y: 0.5)
        scene.size = skView.bounds.size
        skView.presentScene(scene)
        
    }
    
    func fourthScene(){
        let scene = FourthGameScene()
        scene.viewController = self
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        scene.anchorPoint =  CGPoint(x: 0.5, y: 0.5)
        scene.size = skView.bounds.size
        skView.presentScene(scene)
        
    }
    
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .landscape
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

