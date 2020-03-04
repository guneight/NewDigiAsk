//
//  ExtensionSyaratdanKetentuanVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension SyaratdanKetentuanViewController {
    
    func setupUI(){
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
        gesture.direction = .down
        let height = view.frame.size.height
        view.addSubview(SyaratDanKetentuanScrollView)
        SyaratDanKetentuanScrollView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
        SyaratDanKetentuanScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
        SyaratDanKetentuanScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        SyaratDanKetentuanScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        SyaratDanKetentuanScrollView.heightAnchor.constraint(equalToConstant: height*0.77)
        ])
        SyaratDanKetentuanScrollView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        SyaratDanKetentuanScrollView.isScrollEnabled = true
        SyaratDanKetentuanScrollView.showsVerticalScrollIndicator = false
        SyaratDanKetentuanScrollView.layoutIfNeeded()
        
        view.addSubview(setujuButton)
        UIHelper.makeButton(button: setujuButton, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, topAnchor:SyaratDanKetentuanScrollView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        setujuButton.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        setujuButton.setTitle("SETUJU", for: .normal)
        
        SyaratDanKetentuanScrollView.addSubview(syaratDanKetentuanContainerView)
        syaratDanKetentuanContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            syaratDanKetentuanContainerView.leadingAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.leadingAnchor),
            syaratDanKetentuanContainerView.trailingAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.trailingAnchor),
            syaratDanKetentuanContainerView.topAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.topAnchor),
            syaratDanKetentuanContainerView.bottomAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.bottomAnchor),
            syaratDanKetentuanContainerView.heightAnchor.constraint(equalToConstant: 1100),
            syaratDanKetentuanContainerView.widthAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.widthAnchor)
                  ])
              let heightConstraint = syaratDanKetentuanContainerView.heightAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.heightAnchor)
              heightConstraint.priority = UILayoutPriority(rawValue: 250)
              heightConstraint.isActive = true
              produkBaseView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        

        syaratDanKetentuanContainerView.addSubview(syaratDanKetentuanLabel)
        UIHelper.makeLabel(label: syaratDanKetentuanLabel, corner: 0, allignment: .left, leadingAnchor: syaratDanKetentuanContainerView.leadingAnchor, trailingAnchor: syaratDanKetentuanContainerView.trailingAnchor, topAnchor: syaratDanKetentuanContainerView.topAnchor, leadingConstant: 27, trailingConstant: -27, topConstant: 30, heightAnchor: 15, widthAnchor: 0)
        syaratDanKetentuanLabel.text = "SYARAT DAN KETENTUAN"
        syaratDanKetentuanLabel.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        syaratDanKetentuanLabel.textColor = #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)

        syaratDanKetentuanContainerView.addSubview(detailSyaratdanKetentuanLabel)
        UIHelper.makeLabel(label: detailSyaratdanKetentuanLabel, corner: 0, allignment: .left, leadingAnchor: syaratDanKetentuanContainerView.leadingAnchor, trailingAnchor: syaratDanKetentuanContainerView.trailingAnchor, topAnchor: syaratDanKetentuanLabel.bottomAnchor, leadingConstant: 27, trailingConstant: -27, topConstant: 20, heightAnchor: 1065, widthAnchor: 0)
        detailSyaratdanKetentuanLabel.backgroundColor = .green
        
    }
    
    @objc func swipeDown() {
         self.dismiss(animated: true, completion: nil)
    }
}

