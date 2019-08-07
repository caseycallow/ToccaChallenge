//
//  MyCardViewController.swift
//  Tocca
//
//  Created by Casey Callow on 8/6/19.
//  Copyright © 2019 caseycallow. All rights reserved.
//

import UIKit

class MyCardViewController: UIViewController {
    
    lazy var scanCard = ScanCard()
    
    lazy var curveImage = UIImageView()
    
    lazy var heading = UILabel(text: "My Card",
                               font: .appBoldFontWith(size: 34),
                               textColor: Color.primaryText,
                               textAlignment: .center,
                               numberOfLines: 0)
    
    lazy var helpText = UILabel(text: "Point other person's phone camera to scan QR code",
                                       font: .appRegularFontWith(size: 13),
                                       textColor: .lightText,
                                       textAlignment: .center,
                                       numberOfLines: 2)
    
    lazy var buttonGroup = ButtonGroup()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        hideNavigationBar()
        setupStyles()
        setupBottomCurve()
        setupHeading()
        setupScanCard()
        setupHelpText()
        setupButtonGroup()
    }
    
    private func hideNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setupStyles() {
        view.backgroundColor = Color.mainBackground
    }
    
    private func setupBottomCurve() {
        view.addSubview(curveImage)
        
        curveImage.image = UIImage(named: "curve")
        curveImage.contentMode = .scaleAspectFill
        
        guard let tabBarHeight = tabBarController?.tabBar.frame.size.height else { return }
        
        curveImage.anchor(top: nil,
                          leading: view.leadingAnchor,
                          bottom: view.bottomAnchor,
                          trailing: view.trailingAnchor,
                          padding: .init(top: 0, left: 0, bottom: tabBarHeight, right: 0))
        
        curveImage.withHeight(view.frame.height / 8)
    }
    
    private func setupHeading() {
        view.addSubview(heading)
        
        heading.anchor(top: view.topAnchor,
                       leading: view.leadingAnchor,
                       bottom: nil,
                       trailing: view.trailingAnchor,
                       padding: .init(top: 70, left: 0, bottom: 0, right: 0))
    }
    
    private func setupScanCard() {
        view.addSubview(scanCard)
        
        scanCard.withSize(CGSize(width: 210, height: 335))
        scanCard.anchor(top: heading.bottomAnchor,
                        leading: nil,
                        bottom: nil,
                        trailing: nil,
                        padding: .allSides(Space.six))
        
        scanCard.centerXToSuperview()
    }
    
    private func setupHelpText() {
        view.addSubview(helpText)
        
        helpText.anchor(top: scanCard.bottomAnchor,
                        leading: scanCard.leadingAnchor,
                        bottom: nil, trailing:
                        scanCard.trailingAnchor,
                        padding: .allSides(Space.three))
    }
    
    private func setupButtonGroup() {
        view.addSubview(buttonGroup)
        
        guard let tabBarHeight = tabBarController?.tabBar.frame.size.height else { return }
        
        buttonGroup.anchor(top: nil,
                           leading: scanCard.leadingAnchor,
                           bottom: view.bottomAnchor,
                           trailing: scanCard.trailingAnchor,
                           padding: .init(top: 0, left: 0, bottom: tabBarHeight * 1.5, right: 0))
    }
}

