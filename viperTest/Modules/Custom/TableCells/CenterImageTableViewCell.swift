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
    
    /**
        Initialize cell
     */
    init() {
        super.init(style: .default, reuseIdentifier: "")
        
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
        Configure the layout of cell
     */
    func setupLayout() {
        self.myImageView = UIImageView()
        
        self.contentView.addSubview(self.myImageView)
        
        self.myImageView.snp.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(120)
        }
    }
    
    /**
        Download and show the image
     
        - Parameter url: url of the image that show in cell
     */
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
    
    /**
        Get cell identifier
     
        - Returns: identifier
     */
    static func preferredIndetifier() -> String {
        return String(describing: CenterImageTableViewCell.self)
    }
    
    /**
        Get height of cell
     
        - Returns: height
     */
    static func preferredHeight() -> CGFloat {
        return 140
    }
}
