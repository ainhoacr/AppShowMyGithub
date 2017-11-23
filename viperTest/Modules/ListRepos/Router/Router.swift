//
//  Router.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class Router: NSObject, RouterProtocol {
    
    //build objects
    let vc: ListReposViewController = ListReposViewController()
    let presenter = Presenter()
    let interactor = Interactor()
    let dataManager = DataManager()
    var navigationController: UINavigationController?
    
    override init() {
        super.init()
        
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = self
        interactor.dataManager = dataManager
        dataManager.interactor = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    
    func presentInterfaceFromWindow(window: UIWindow) {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = self
        interactor.dataManager = dataManager
        dataManager.interactor = presenter
        navigationController = UINavigationController(rootViewController: vc)
        
        window.rootViewController = self.navigationController
    }
}
