//
//  ListReposInteractorProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol ListReposInteractorProtocol: class {

    var dataManager: DataManagerProtocol? {get set}
    
    func getData()
}
