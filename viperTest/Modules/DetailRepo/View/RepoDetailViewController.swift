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
        
        self.setupTableView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setupView()
    }
    
    /**
        Configure nav bar
     */
    func setupView() {
        self.navigationController?.navigationItem.leftBarButtonItem?.title = ""
        self.title = LanguageCoordinator.localized(string: "title_nav_bar_detail")
    }
    
    /**
        Configure the tableView
     */
    func setupTableView() {
        
        self.tableView = UITableView.init(frame: self.view.frame, style: .plain)
        self.tableView.separatorStyle = .none
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.backgroundColor = .white
        
        self.view.addSubview(tableView)
    }
}

extension RepoDetailViewController: UITableViewDataSource {
    
    /**
        Get array with contains data of cells
     
        - Returns: array of dictionay of strings
     */
    func arrayOfCells() -> Array<Dictionary<String, String>> {
        
        var cells = Array<Dictionary<String, String>>()
        cells.append([self.repository.owner!.avatar! : ""])
        cells.append([LanguageCoordinator.localized(string: "detail_title") : self.repository.name!])
        cells.append([LanguageCoordinator.localized(string: "detail_language") : self.repository.language!])
        cells.append([LanguageCoordinator.localized(string: "detail_url") : self.repository.htmlUrl!])
        cells.append([LanguageCoordinator.localized(string: "detail_updated") : self.repository.formattedString()])
        cells.append([LanguageCoordinator.localized(string: "detail_description") : self.repository.descriptionRepo!])
        
        return cells
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayOfCells().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let arrayCells = self.arrayOfCells()
        
        switch indexPath.row {
        case 0:
            let imageCell = CenterImageTableViewCell()
            imageCell.downloadImage(url: arrayCells[indexPath.row].keys.first!)
            imageCell.selectionStyle = .none
            
            return imageCell
        default:
            
            let titleCell = LabelTableViewCell()
            titleCell.title.text = arrayCells[indexPath.row].keys.first!
            titleCell.title.font = UIFont.boldSystemFont(ofSize: 16)
            
            titleCell.subtitle.text = arrayCells[indexPath.row].values.first!
            titleCell.subtitle.font = UIFont.systemFont(ofSize: 16)
            titleCell.selectionStyle = .none
            
            return titleCell
        }
    }
}

extension RepoDetailViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return CenterImageTableViewCell.preferredHeight()
        default:
            let arrayCells = self.arrayOfCells()
            
            return LabelTableViewCell.preferredHeight(width: self.view.frame.width, title: arrayCells[indexPath.row].keys.first!, subtitle: arrayCells[indexPath.row].values.first!, titleFont: UIFont.boldSystemFont(ofSize: 16), subtitleFont: UIFont.systemFont(ofSize: 16))
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

