//
//  VListReposiewControllerProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol ListReposViewControllerProtocol: class {

    
    /**
        Show data received from parameter
     
        - Parameter data: data to show
    */
    func showData(data: Array<Any>)
}
