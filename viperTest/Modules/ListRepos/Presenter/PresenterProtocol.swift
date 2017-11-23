//
//  PresenterProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol PresenterProtocol: class {

    var view: ViewControllerProtocol? {get set}
    var interactor: InteractorProtocol? {get set}
    var router: RouterProtocol? {get set}
    
    func updateView()
}
