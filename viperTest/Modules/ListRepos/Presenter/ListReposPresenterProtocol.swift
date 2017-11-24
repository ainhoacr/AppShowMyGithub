//
//  ListReposPresenterProtocol.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

protocol ListReposPresenterProtocol: class {

    var view: ListReposViewControllerProtocol? {get set}
    var interactor: ListReposInteractorProtocol? {get set}
    var router: ListReposRouterProtocol? {get set}
    
    func updateView()
    func didTap(repository: Repository)
}
