//
//  LanguageCoordinator.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class LanguageCoordinator: NSObject {
    
    /**
        Manage localized strings
     
        - Parameter string: key of string
        - Returns: value of string localized
     */
    static func localized(string: String) -> String {
        return NSLocalizedString(string, comment: "")
    }
}
