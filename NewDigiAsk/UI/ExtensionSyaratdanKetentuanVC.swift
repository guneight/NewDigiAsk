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
        view.backgroundColor = .clear
        let height = view.frame.size.height
        
        view.addSubview(syaratDanKetentuanView)
        UIHelper.makeView(view: syaratDanKetentuanView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 45, corner: 20, heightAnchor: 0, widthAnchor: 0 )
        syaratDanKetentuanView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        syaratDanKetentuanView.backgroundColor = .white
        
        syaratDanKetentuanView.addSubview(SyaratDanKetentuanScrollView)
        
        SyaratDanKetentuanScrollView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
        SyaratDanKetentuanScrollView.leadingAnchor.constraint(equalTo: syaratDanKetentuanView.leadingAnchor),
        SyaratDanKetentuanScrollView.trailingAnchor.constraint(equalTo: syaratDanKetentuanView.trailingAnchor),
        SyaratDanKetentuanScrollView.topAnchor.constraint(equalTo: syaratDanKetentuanView.topAnchor),
        SyaratDanKetentuanScrollView.heightAnchor.constraint(equalToConstant: height*0.77-35)
        ])
        SyaratDanKetentuanScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        SyaratDanKetentuanScrollView.isScrollEnabled = true
        SyaratDanKetentuanScrollView.showsVerticalScrollIndicator = false
        SyaratDanKetentuanScrollView.layoutIfNeeded()
        
        syaratDanKetentuanView.addSubview(setujuButton)
        UIHelper.makeButton(button: setujuButton, leadingAnchor: syaratDanKetentuanView.leadingAnchor, trailingAnchor: syaratDanKetentuanView.trailingAnchor, topAnchor:SyaratDanKetentuanScrollView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        setujuButton.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        setujuButton.setTitle("SETUJU", for: .normal)
        
        SyaratDanKetentuanScrollView.addSubview(syaratDanKetentuanContainerView)
        syaratDanKetentuanContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            syaratDanKetentuanContainerView.leadingAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.leadingAnchor),
            syaratDanKetentuanContainerView.trailingAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.trailingAnchor),
            syaratDanKetentuanContainerView.topAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.topAnchor),
            syaratDanKetentuanContainerView.bottomAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.bottomAnchor),
            syaratDanKetentuanContainerView.heightAnchor.constraint(equalToConstant: 1000),
            syaratDanKetentuanContainerView.widthAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.widthAnchor)
                  ])
              let heightConstraint = syaratDanKetentuanContainerView.heightAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.heightAnchor)
              heightConstraint.priority = UILayoutPriority(rawValue: 250)
              heightConstraint.isActive = true
              produkBaseView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        

        syaratDanKetentuanContainerView.addSubview(syaratDanKetentuanLabel)
        UIHelper.makeLabel(label: syaratDanKetentuanLabel, corner: 0, allignment: .left, leadingAnchor: syaratDanKetentuanContainerView.leadingAnchor, trailingAnchor: syaratDanKetentuanContainerView.trailingAnchor, topAnchor: syaratDanKetentuanContainerView.topAnchor, leadingConstant: 27, trailingConstant: -27, topConstant: 30, heightAnchor: 15, widthAnchor: 0)
        UIHelper.setTextLabel(label: syaratDanKetentuanLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "SYARAT DAN KETENTUAN", kerning: 0.12)

        syaratDanKetentuanContainerView.addSubview(detailSyaratdanKetentuanLabel)
        UIHelper.makeLabel(label: detailSyaratdanKetentuanLabel, corner: 0, allignment: .left, leadingAnchor: syaratDanKetentuanContainerView.leadingAnchor, trailingAnchor: syaratDanKetentuanContainerView.trailingAnchor, topAnchor: syaratDanKetentuanLabel.bottomAnchor, leadingConstant: 27, trailingConstant: -27, topConstant: 20, heightAnchor: 200, widthAnchor: 0)
        UIHelper.setTextLabel(label: detailSyaratdanKetentuanLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.65), weight: .bold, fontSize: 14, text: syaratDanKetentuan, kerning: 0.04)
        detailSyaratdanKetentuanLabel.numberOfLines = 0
        
    }
    
    @objc func swipeDown() {
         self.dismiss(animated: true, completion: nil)
    }
}

