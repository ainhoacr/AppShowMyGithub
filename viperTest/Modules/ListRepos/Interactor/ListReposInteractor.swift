//
//  ListReposInteractor.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class ListReposInteractor: NSObject, ListReposInteractorProtocol {

    var dataManager: DataManagerProtocol?
    
    func getData() {
        self.dataManager?.fecthData()
    }
}
