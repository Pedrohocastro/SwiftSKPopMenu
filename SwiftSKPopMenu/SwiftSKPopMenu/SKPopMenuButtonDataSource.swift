//
//  SKPopMenuButtonDataSource.swift
//  SwiftSKPopMenu
//
//  Created by Felipe Rodrigues on 02/06/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import Foundation
import SpriteKit

@objc protocol SKPopMenuButtonDataSource {
    @objc func action(isOpen: Bool, scale: CGSize)
}
