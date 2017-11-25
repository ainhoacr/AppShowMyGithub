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
        
        self.vc.presenter = presenter
        self.presenter.view = vc
        self.presenter.interactor = interactor
        self.presenter.router = self
        self.navigationController = UINavigationController(rootViewController: vc)
    }
}
