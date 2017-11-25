//
//  ListReposRouterProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol ListReposRouterProtocol: class {

    /**
        Show view in window
     
        - Parameter window: main view
    */
    func presentInterfaceFromWindow(window: UIWindow)
    
    /**
        Navigate to detail repository
        - Parameter repository: repository that show detail
    */
    func goToDetail(repository: Repository)
}
