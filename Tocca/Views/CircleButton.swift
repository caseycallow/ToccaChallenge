//
//  CircleButton.swift
//  Tocca
//
//  Created by Casey Callow on 8/6/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

class CircleButton: UIButton {
    
    let size = 70
    let insetSpacing: CGFloat = 20
    
    convenience init(withImage image: String) {
        self.init(frame: .zero)
        frame = .init(origin: .zero, size: .init(width: size, height: size))
        
        setupImage(for: image)
        setupStyles()
        setupSizing()
        setupRoundedCorners()
        setupCircleShadow()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    private func setupImage(for imageName: String) {
        setImage(UIImage(named: imageName)?.withRenderingMode(.alwaysTemplate), for: .normal)
    }

    private func setupStyles() {
        tintColor = Color.activeHighlight
        backgroundColor = .white
    }
    
    private func setupSizing() {
        withSize(.init(width: size, height: size))
        imageEdgeInsets = UIEdgeInsets(top: insetSpacing, left: insetSpacing, bottom: insetSpacing, right: insetSpacing)
    }
    
    private func setupRoundedCorners() {
        layer.cornerRadius = frame.width / 2
        clipsToBounds = true
    }
    
    private func setupCircleShadow() {
        setupShadow()
        layer.masksToBounds = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
