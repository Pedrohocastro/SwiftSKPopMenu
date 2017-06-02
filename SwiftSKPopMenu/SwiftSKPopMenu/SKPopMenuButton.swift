//
//  SKPopMenuButton.swift
//  SwiftSKPopMenu
//
//  Created by Felipe Rodrigues on 02/06/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import Foundation
import SpriteKit

class SKPopMenuButton : SKPopMenuButtonDataSource {
   
    let buttonArray: Array<SKSpriteNode>
    
    init(array: Array<SKSpriteNode>){
     buttonArray = array
    }
    
    func action(isOpen: Bool, scale: CGSize) {
        
        var sequence : SKAction!
        
        var _scale = scale
        _scale.height = _scale.height * 1.4
        _scale.width = _scale.width * 1.4
        
        let scaleActionIn = SKAction.scale(to: _scale, duration: 0.2)
        let scaleActionOut = SKAction.scale(to: scale, duration: 0.2)
        
        scaleActionOut.timingMode = .easeInEaseOut
        scaleActionIn.timingMode = .easeInEaseOut

        for button in buttonArray{
        
            if(isOpen){
                sequence = SKAction.sequence([scaleActionOut,scaleActionIn])
            }else{
                sequence = SKAction.sequence([scaleActionIn,scaleActionOut])
            }
            
            button.run(sequence)
        }
        
    }
}
