//
//  ListReposPresenterProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol ListReposPresenterProtocol: class {
    
    /**
        Update data to show in view
    */
    func updateView()
    
    /**
        Navigate to detail repository
     
        - Parameter repository: repository to show detail
    */
    func didTap(repository: Repository)
}
