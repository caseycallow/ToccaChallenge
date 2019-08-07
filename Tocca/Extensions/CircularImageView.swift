//
//  CircularImageView.swift
//  Tocca
//
//  Created by Casey Callow on 8/6/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

open class CircularImageView: UIImageView {
    
    public convenience init(width: CGFloat, image: UIImage? = nil) {
        self.init(frame: .zero)
        frame = .init(origin: .zero, size: .init(width: width, height: width))
        
        contentMode = .scaleAspectFill
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        heightAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.width / 2
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
