//
//  DataManager.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class DataManager: NSObject, DataManagerProtocol {
    
    var interactor: InteractorOutputProtocol?
    var repositories = [Repository]()
    
    func fecthData() {
        
        Alamofire.request("https://api.github.com/users/ainhoacr/repos").responseJSON(completionHandler: { response in
            
            
            let jsonArray = response.result.value as! Array <Dictionary<String, Any>>
            for i in 0...(jsonArray.count - 1) {
                let repository = Repository(JSON: jsonArray[i])!
                self.repositories.append(repository)
            }
            self.interactor?.setData(repositories: self.repositories as Array<Repository>)
        })
    }
}
