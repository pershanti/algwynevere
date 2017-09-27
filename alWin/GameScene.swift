//
//  GameScene.swift
//  alWin
//
//  Created by Shantini Vyas on 9/19/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var viewController: UIViewController?
    
    var player = SKSpriteNode(imageNamed: "Character Pink Girl")

    override func sceneDidLoad() {
        addbg()
        player.size = CGSize(width: 50, height: 75)
        player.position = CGPoint(x:-200, y:-130)
        addChild(self.player)
        SKAction.wait(forDuration: 3)
        addCastle(name: "First Castle")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let positionInScene = touch.location(in: self)
            let touchedNode = self.atPoint(positionInScene)
            if let name = touchedNode.name {
                if name == "First Castle" {
                    movePlayer(figure: self.player, x:200)
                    let wait = SKAction.wait(forDuration: 2.5)
                    let action = SKAction.run {
                        self.viewController?.performSegue(withIdentifier: "none", sender: nil)
                    }
                    
                    self.run(SKAction.sequence([wait, action]))
                }
            }
        }
    }
    
    func movePlayer(figure: SKSpriteNode, x: CGFloat){
        let moveRight = SKAction.moveBy(x: x, y: 0, duration: 2)
        figure.run(moveRight)
        
    }
    
    func addCastle(name: String){
        let castle = SKSpriteNode(imageNamed: "castle-small")
        castle.size = CGSize(width:50, height:80)
        castle.position = CGPoint(x:50, y: -130)
        castle.name = name
        addChild(castle)
    }
    
    func addbg(){
        let background = SKSpriteNode(imageNamed: "l-algwyn-bg copy-1")
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addChild(background)
        
    }
    

    
    override func update(_ currentTime: TimeInterval) {
      }
}
