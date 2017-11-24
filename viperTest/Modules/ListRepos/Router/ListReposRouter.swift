//
//  ListReposRouter.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class ListReposRouter: NSObject, ListReposRouterProtocol {
    
    //build objects
    let vc: ListReposViewController = ListReposViewController()
    let presenter = ListReposPresenter()
    let interactor = ListReposInteractor()
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
    
    func goToDetail(repository: Repository) {
        let view = RepoDetailRouter.init().vc
        view.repository = repository
        self.vc.navigationController?.pushViewController(view, animated: true)
    }
}
