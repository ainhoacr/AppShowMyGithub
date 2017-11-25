//
//  ListReposInteractorOutputProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol ListReposInteractorOutputProtocol: class {

    /**
        Send data to presenter
     
        - Parameter repositories: array of repositories
    */
    func setData(repositories: Array<Repository>)
}
