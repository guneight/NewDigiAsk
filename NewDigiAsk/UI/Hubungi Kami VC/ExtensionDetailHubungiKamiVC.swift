//
//  ExtensionDetailHubungiKamiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailHubungiKamiViewController {
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(detailHubungiKamiBaseView)
        UIHelper.makeView(view: detailHubungiKamiBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        detailHubungiKamiBaseView.backgroundColor = .white
        
        detailHubungiKamiBaseView.addSubview(iconCreateNewContactImage)
        UIHelper.makeImageView(imageView: iconCreateNewContactImage, leadingAnchor: detailHubungiKamiBaseView.leadingAnchor, topAnchor: detailHubungiKamiBaseView.topAnchor, leadingConstant: 20, topConstant: 30, corner: 0, heightAnchor: 20)
        iconCreateNewContactImage.widthAnchor.constraint(equalToConstant: 20 ).isActive = true
        iconCreateNewContactImage.contentMode = .scaleAspectFit
     
        iconCreateNewContactImage.image = UIImage(named: "newContactIcon")
        
        detailHubungiKamiBaseView.addSubview(createNewContactLabel)
        UIHelper.makeLabel(label: createNewContactLabel, corner: 0, allignment: .left, leadingAnchor: iconCreateNewContactImage.trailingAnchor, trailingAnchor: detailHubungiKamiBaseView.trailingAnchor, topAnchor: detailHubungiKamiBaseView.topAnchor, leadingConstant: 10, trailingConstant: -20, topConstant: 35, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: createNewContactLabel, fontName: "Arial", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 12, text: "Create New Contact", kerning: 0.4)
        createNewContactLabel.isUserInteractionEnabled = true

        detailHubungiKamiBaseView.addSubview(underlineCreateNewContact)
        UIHelper.makeView(view: underlineCreateNewContact, leadingAnchor: detailHubungiKamiBaseView.leadingAnchor, trailingAnchor: detailHubungiKamiBaseView.trailingAnchor, topAnchor: iconCreateNewContactImage.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineCreateNewContact.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

        detailHubungiKamiBaseView.addSubview(iconSMSImage)
        UIHelper.makeImageView(imageView: iconSMSImage, leadingAnchor: detailHubungiKamiBaseView.leadingAnchor, topAnchor: underlineCreateNewContact.bottomAnchor, leadingConstant: 20, topConstant: 10, corner: 0, heightAnchor: 20)
        iconSMSImage.widthAnchor.constraint(equalToConstant: 20 ).isActive = true
        iconSMSImage.image = UIImage(named: "messageIcon")

        detailHubungiKamiBaseView.addSubview(smsLabel)
        UIHelper.makeLabel(label: smsLabel, corner: 0, allignment: .left, leadingAnchor: iconSMSImage.trailingAnchor, trailingAnchor: detailHubungiKamiBaseView.trailingAnchor, topAnchor: underlineCreateNewContact.bottomAnchor, leadingConstant: 10, trailingConstant: -20, topConstant: 15, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: smsLabel, fontName: "Arial", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 12, text: "SMS", kerning: 0.4)
        smsLabel.isUserInteractionEnabled = true

        detailHubungiKamiBaseView.addSubview(underlineSMS)
        UIHelper.makeView(view: underlineSMS, leadingAnchor: detailHubungiKamiBaseView.leadingAnchor, trailingAnchor: detailHubungiKamiBaseView.trailingAnchor, topAnchor: iconSMSImage.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineSMS.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
    }
    
    func setupNavBarDetailHubungiKami(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
       let backItem = UIBarButtonItem()
          backItem.title = "HUBUNGI KAMI"
          let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
          backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
          navigationItem.leftBarButtonItems = [customButtonNav, backItem]
        
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
