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
    
    /**
        Get cell identifier
     
        - Returns: identifier
     */
    static func preferredIndetifier() -> String {
        return String(describing: LabelTableViewCell.self)
    }
    
    /**
        Get height of cell
     
        - Parameter width: width of cell
        - Parameter title: text that shows in first label
        - Parameter subtitle: text that shows in second label
        - Parameter titleFont: font used in first label
        - Parameter subtitleFont: font used in second label
        - Returns: height
     */
    static func preferredHeight(width: CGFloat, title: String, subtitle: String, titleFont: UIFont, subtitleFont: UIFont) -> CGFloat {
        let widthLabel = width - 40
        let height = title.heightWithConstrainedWidth(width: widthLabel, font: titleFont)
        let heightSubtitle = subtitle.heightWithConstrainedWidth(width: widthLabel, font: subtitleFont)
        let totalHeight =  height + 20.0 + heightSubtitle
        
        return totalHeight
    }
}
