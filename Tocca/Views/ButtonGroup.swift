//
//  ButtonGroup.swift
//  Tocca
//
//  Created by Casey Callow on 8/6/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

class ButtonGroup: UIView {
    
    lazy var shareButton = CircleButton(withImage: "share")
    lazy var scanButton = CircleButton(withImage: "add")
    
    lazy var scanLabel = UILabel(text: "SCAN QR/BC", font: .appBoldFontWith(size: 14), textColor: Color.primaryText, textAlignment: .center, numberOfLines: 0)
    
    lazy var shareLabel = UILabel(text: "SHARE", font: .appBoldFontWith(size: 14), textColor: Color.primaryText, textAlignment: .center, numberOfLines: 0)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    private func setupLayout() {
        hstack(
            stack(scanLabel, scanButton,
                  spacing: Space.two,
                  alignment: .center,
                  distribution: .fill),
            
            stack(shareLabel, shareButton,
                  spacing: Space.two,
                  alignment: .center,
                  distribution: .fill),
            
            distribution: .equalCentering
        )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
