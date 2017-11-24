//
//  ListReposPresenter.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class ListReposPresenter: NSObject, ListReposPresenterProtocol {
    
    weak var view: ListReposViewControllerProtocol?
    var interactor: ListReposInteractorProtocol?
    var router: ListReposRouterProtocol?
    var repositories: Array<Any>!
    
    func updateView() {
        self.interactor?.getData()
    }
    
    func didTap(repository: Repository) {
        router?.goToDetail(repository: repository)
    }
}

extension ListReposPresenter: ListReposInteractorOutputProtocol {
    
    func setData(repositories: Array<Repository>) {
        if repositories.count > 0 {
            self.repositories = repositories
            view?.showData(data: repositories)
        }
    }
}
