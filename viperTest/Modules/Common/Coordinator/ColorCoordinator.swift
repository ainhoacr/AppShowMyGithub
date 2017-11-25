//
//  ColorCoordinator.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 23/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class ColorCoordinator: UIColor {
    
    /**
        Get the color that indicates that a repository is a fork
     
        - Returns: UIColor
     */
    static func forkColor() -> UIColor {
        return UIColor(red:0.90, green:0.83, blue:0.94, alpha:1.0)
    }
    
    /**
        Get the color used for background
     
        - Returns: UIColor
     */
    static func backgroundGray() -> UIColor {
        return UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0)
    }
}
