//
//  UIFont.swift
//  Tocca
//
//  Created by Casey Callow on 8/7/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

extension UIFont {
    
    class func appRegularFontWith(size: CGFloat) -> UIFont {
        return  UIFont(name: FontName.regular, size: size)!
    }
    
    class func appBoldFontWith(size: CGFloat) -> UIFont {
        return  UIFont(name: FontName.bold, size: size)!
    }
}
