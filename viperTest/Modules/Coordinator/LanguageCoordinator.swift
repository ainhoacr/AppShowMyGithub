//
//  LanguageCoordinator.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class LanguageCoordinator: NSObject {
    public class func localized(string: String) -> String {
        return NSLocalizedString(string, comment: "")
    }
}
