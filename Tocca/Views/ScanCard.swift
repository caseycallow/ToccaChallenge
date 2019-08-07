//
//  ScanCard.swift
//  Tocca
//
//  Created by Casey Callow on 8/6/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

class ScanCard: UIView {
    
    lazy var profileImage = CircularImageView(width: 68)
    
    lazy var profileName = UILabel(text: "Tanya Ofek",
                                   font: .appBoldFontWith(size: 22),
                                   textColor: .black,
                                   textAlignment: .center,
                                   numberOfLines: 0)
    
    lazy var profileTitle = UILabel(text: "UX Designer at Tocca.io",
                                    font: .appRegularFontWith(size: 13),
                                    textColor: Color.secondaryText,
                                    textAlignment: .center,
                                    numberOfLines: 0)
    
    lazy var qrCode = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyles()
        setupProfileImage()
        setupProfileName()
        setupProfileTitle()
        setupQRCode()
    }
    
    private func setupStyles() {
        backgroundColor = .white
        layer.cornerRadius = 18
        setupShadow()
    }
    
    private func setupProfileImage() {
        addSubview(profileImage)
        
        profileImage.image = UIImage(named: "profilePic")
        
        profileImage.setupShadow()

        profileImage.centerXToSuperview()
        profileImage.anchor(top: topAnchor,
                            leading: nil,
                            bottom: nil,
                            trailing: nil,
                            padding: .allSides(Space.three))
    }
    
    private func setupProfileName() {
        addSubview(profileName)
        
        profileName.centerXToSuperview()
        profileName.anchor(top: profileImage.bottomAnchor,
                            leading: leadingAnchor,
                            bottom: nil,
                            trailing: trailingAnchor,
                            padding: .init(top: Space.two, left: 0, bottom: 0, right: 0))
    }
    
    private func setupProfileTitle() {
        addSubview(profileTitle)

        profileTitle.centerXToSuperview()
        profileTitle.anchor(top: profileName.bottomAnchor,
                            leading: leadingAnchor,
                            bottom: nil,
                            trailing: trailingAnchor,
                            padding: .init(top: Space.half, left: 0, bottom: Space.two, right: 0))
    }
    
    private func setupQRCode() {
        addSubview(qrCode)
        
        qrCode.image = UIImage(named: "qr")
        qrCode.contentMode = .scaleAspectFit
        qrCode.anchor(top: profileTitle.bottomAnchor,
                      leading: leadingAnchor,
                      bottom: bottomAnchor,
                      trailing: trailingAnchor,
                      padding: .init(top: Space.two, left: Space.three, bottom: Space.three, right: Space.three))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
