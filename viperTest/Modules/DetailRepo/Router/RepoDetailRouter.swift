//
//  RepoDetailRouter.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 23/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class RepoDetailRouter: NSObject, RepoDetailRouterProtocol {

    //build objects
    let vc: RepoDetailViewController = RepoDetailViewController()
    let presenter = RepoDetailPresenter()
    let interactor = RepoDetailInteractor()
    var navigationController: UINavigationController?
    
    override init() {
        super.init()
        
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = self
        navigationController = UINavigationController(rootViewController: vc)
    }
}
