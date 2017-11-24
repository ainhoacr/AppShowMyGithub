//
//  RepoDetailViewController.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 23/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class RepoDetailViewController: UIViewController, RepoDetailViewControllerProtocol {
    
    var presenter: RepoDetailPresenterProtocol?
    var repository: Repository!
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupView()
    }
    
    func setupView() {
        self.navigationController?.navigationItem.leftBarButtonItem?.title = ""
        self.title = LanguageCoordinator.localized(string: "title_nav_bar_detail")
    }
    
    func setupTableView() {
        
        tableView = UITableView.init(frame: self.view.frame, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        
        self.view.addSubview(tableView)
    }
}

extension RepoDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension RepoDetailViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
}

