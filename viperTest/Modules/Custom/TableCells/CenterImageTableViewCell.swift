//
//  CenterImageTableViewCell.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 25/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class CenterImageTableViewCell: UITableViewCell {

    var myImageView: UIImageView!
    
    init() {
        super.init(style: .default, reuseIdentifier: "")
        
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        self.myImageView = UIImageView()
        
        self.contentView.addSubview(self.myImageView)
        
        self.myImageView.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(120)
        }
    }
    
    func downloadImage(url: String) {
        DispatchQueue.global(qos: .background).async {
            
            let url = URL(string: url)
            let data = try? Data(contentsOf: url!)
            let image = UIImage(data: data!)
            
            DispatchQueue.main.async {
                self.myImageView.image = image!
            }
        }
    }
    
    class func preferredIndetifier() -> String {
        return String(describing: CenterImageTableViewCell.self)
    }
}
