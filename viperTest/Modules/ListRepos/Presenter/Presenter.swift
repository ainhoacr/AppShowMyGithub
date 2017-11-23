//
//  Presenter.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class Presenter: NSObject, PresenterProtocol {
    
    weak var view: ListReposViewControllerProtocol?
    var interactor: InteractorProtocol?
    var router: RouterProtocol?
    var repositories: Array<Any>!
    
    func updateView() {
        self.interactor?.getData()
    }
}

extension Presenter: InteractorOutputProtocol {
    
    func setData(repositories: Array<Repository>) {
        if repositories.count > 0 {
            self.repositories = repositories
            view?.showData(data: repositories)
        }
    }
}
