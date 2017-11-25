//
//  ListReposViewController.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 10/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class ListReposViewController: UIViewController {
    
    var presenter: ListReposPresenterProtocol?
    var collectionView: UICollectionView!
    var repositories: Array<Any>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setData()
        self.setupCollectionView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setupView()
    }
    
    func setData() {
        self.presenter?.updateView()
        LoadManager.show()
    }
    
    func setupView() {
        self.title = LanguageCoordinator.localized(string: "title_nav_bar")
    }
    
    func setupCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: self.view.frame.width, height: 110)
        layout.minimumLineSpacing = 0
        
        self.collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(TwoLabelsCollectionViewCell.self, forCellWithReuseIdentifier: TwoLabelsCollectionViewCell.preferredIndetifier())
        self.collectionView.backgroundColor = .white
        self.view.addSubview(collectionView)
    }
    
    func didTap(repository: Repository) {
        self.presenter?.didTap(repository: repository)
    }
}

extension ListReposViewController: ListReposViewControllerProtocol {
    
    func showData(data: Array<Any>) {
        LoadManager.hide()
        self.repositories = data
        self.collectionView.reloadData()
    }
}

extension ListReposViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.repositories?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let repository = self.repositories[indexPath.item] as! Repository
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TwoLabelsCollectionViewCell.preferredIndetifier(), for: indexPath) as! TwoLabelsCollectionViewCell
        
        cell.firstLabel.text = repository.owner?.login
        cell.secondLabel.text = repository.name

        if let fork = repository.fork {
            if fork {
                cell.customContentView.backgroundColor = ColorCoordinator.forkColor()
            } else {
                cell.customContentView.backgroundColor = ColorCoordinator.backgroundGray()
            }
        }
        return cell
    }
}

extension ListReposViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        let repository = self.repositories[indexPath.item] as! Repository
        self.didTap(repository: repository)
    }
}
