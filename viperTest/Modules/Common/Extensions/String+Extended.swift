//
//  String+Extended.swift
//  viperTest
//
//  Created by Ainhoa Calviño on 25/11/17.
//  Copyright © 2017 Ainhoa. All rights reserved.
//

import UIKit

extension String {
    
    /**
        Get the height of the text given width and font
     
        - Parameter width: width of element where show the text
        - Parameter font: font of the text
        - Returns: The height of the text
     */
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        
        return boundingBox.height
    }
}
