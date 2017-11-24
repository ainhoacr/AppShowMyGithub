//
//  RepoDetailPresenter.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 23/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class RepoDetailPresenter: NSObject, RepoDetailPresenterProtocol {
    
    weak var view: RepoDetailViewControllerProtocol?
    var interactor: RepoDetailInteractorProtocol?
    var router: RepoDetailRouterProtocol?
}
