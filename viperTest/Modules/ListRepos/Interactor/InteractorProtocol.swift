//
//  InteractorProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol InteractorProtocol: class {

    var dataManager: DataManagerProtocol? {get set}
    
    func getData()
}
