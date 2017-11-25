//
//  LoadManager.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 25/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class LoadManager: NSObject {
    
    static func show() {
        let activityData = ActivityData(size: CGSize(width: 40, height: 40), message: nil, messageFont: nil, type: .ballTrianglePath, color: .purple, padding: 0, displayTimeThreshold: 2, minimumDisplayTime: 2, backgroundColor: ColorCoordinator.backgroundGray(), textColor: nil)
        NVActivityIndicatorPresenter.sharedInstance.startAnimating(activityData)
    }
    
    static func hide() {
        NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
    }
}
