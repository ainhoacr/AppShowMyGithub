//
//  ThreeLabelsCollectionViewCell.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 11/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit
import SnapKit

class TwoLabelsCollectionViewCell: UICollectionViewCell {
    
    var firstLabel: UILabel!
    var secondLabel: UILabel!
    var customContentView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        
        self.customContentView = UIView()
        self.firstLabel = UILabel()
        self.secondLabel =  UILabel()
        
        self.contentView.addSubview(self.customContentView)
        self.customContentView.addSubview(self.firstLabel)
        self.customContentView.addSubview(self.secondLabel)
        
        self.customContentView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-10)
        }
        
        self.firstLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalTo(self.secondLabel.snp.top).offset(-8)
        }
        
        self.secondLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstLabel.snp.bottom).offset(8)
            make.left.equalTo(self.firstLabel.snp.left)
            make.right.equalTo(self.firstLabel.snp.right)
            make.bottom.equalToSuperview().offset(-20)
        }
        
        self.firstLabel.numberOfLines = 1
        self.secondLabel.numberOfLines = 1
        
        self.customContentView.layer.cornerRadius = 10
        self.customContentView.clipsToBounds = true
        self.customContentView.layer.borderColor = UIColor.black.cgColor
        self.customContentView.layer.borderWidth = 0.5
    }
    
    static func preferredIndetifier() -> String {
        return String(describing: TwoLabelsCollectionViewCell.self)
    }
}

