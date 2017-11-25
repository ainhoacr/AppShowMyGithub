//
//  LabelTableViewCell.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 25/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

class LabelTableViewCell: UITableViewCell {
    
    var title: UILabel!
    var subtitle: UILabel!

    init() {
        super.init(style: .default, reuseIdentifier: "")
        
        self.setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        self.title = UILabel()
        self.subtitle = UILabel()
        
        self.contentView.addSubview(self.title)
        self.contentView.addSubview(self.subtitle)
        
        self.title.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(5)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalTo(self.subtitle.snp.top).offset(-5)
        }
        
        self.subtitle.snp.makeConstraints { (make) in
            make.top.equalTo(self.title.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-5)
        }
        
        self.subtitle.numberOfLines = 0
    }
    
    class func preferredIndetifier() -> String {
        return String(describing: LabelTableViewCell.self)
    }
    
    class func preferredHeight(width: CGFloat, title: String, subtitle: String, titleFont: UIFont, subtitleFont: UIFont) -> CGFloat {
        let widthLabel = width - 40
        let height = title.heightWithConstrainedWidth(width: widthLabel, font: titleFont)
        let heightSubtitle = subtitle.heightWithConstrainedWidth(width: widthLabel, font: subtitleFont)
        let totalHeight =  height + 20.0 + heightSubtitle
        
        return totalHeight
    }
}
