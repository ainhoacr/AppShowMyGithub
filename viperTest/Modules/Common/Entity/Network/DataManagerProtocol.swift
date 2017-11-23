//
//  DataManagerProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol DataManagerProtocol: class {

    var interactor: ListReposInteractorOutputProtocol? {get set}

    func fecthData()
}
