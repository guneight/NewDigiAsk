//
//  ExtensionHubungiKamiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension HubungiKamiViewController{
    
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(hubungiKamiLabel)
        UIHelper.makeLabel(label: hubungiKamiLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 30, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: hubungiKamiLabel, fontName: "AvantGarde Bk BT" , fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .bold, fontSize: 14, text: "HUBUNGI KAMI", kerning: 0.4)
        
        view.addSubview(hubungiKami7hariLabel)
        UIHelper.makeLabel(label: hubungiKami7hariLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: hubungiKamiLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, heightAnchor: 30, widthAnchor: 0)
        UIHelper.setTextLabel(label: hubungiKami7hariLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .regular, fontSize: 12, text: "Hubungi kami 7 hari dalam seminggu dan 24 jam setiap hari", kerning: 0.14)

        view.addSubview(teleponBaseView)
        UIHelper.makeView(view: teleponBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: hubungiKami7hariLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 40, corner: 10, heightAnchor: 70, widthAnchor: 0)
        teleponBaseView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        teleponBaseView.isUserInteractionEnabled = true

        teleponBaseView.addSubview(teleponIconImage)
        UIHelper.makeImageView(imageView: teleponIconImage, leadingAnchor: teleponBaseView.leadingAnchor, topAnchor: teleponBaseView.topAnchor, leadingConstant: 10, topConstant: 10, corner: 10, heightAnchor: 50)
         teleponIconImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        teleponIconImage.image = UIImage(named: " ")
        teleponIconImage.backgroundColor = .gray


        teleponBaseView.addSubview(nomorTeleponLabel)
        UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: teleponIconImage.trailingAnchor, trailingAnchor: teleponBaseView.trailingAnchor, topAnchor: teleponBaseView.topAnchor, leadingConstant: 10, trailingConstant: -(teleponBaseView.frame.size.width/2), topConstant: 15, heightAnchor: 32, widthAnchor: 0)

        UIHelper.setTextLabel(label: nomorTeleponLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .regular
            , fontSize: 12, text: "Melalui telepon di 1500-045", kerning: 0.4)
        nomorTeleponLabel.numberOfLines = 2

        view.addSubview(chatBaseView)
        UIHelper.makeView(view: chatBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: teleponBaseView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 10, heightAnchor: 70, widthAnchor: 0)
        chatBaseView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

        chatBaseView.addSubview(chatIconImage)
        UIHelper.makeImageView(imageView: chatIconImage, leadingAnchor: chatBaseView.leadingAnchor, topAnchor: chatBaseView.topAnchor, leadingConstant: 10, topConstant: 10, corner: 10, heightAnchor: 50)
        chatIconImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        chatIconImage.image = UIImage(named: " ")
        chatIconImage.backgroundColor = .gray

        chatBaseView.addSubview(chatLabel)
        UIHelper.makeLabel(label: chatLabel, corner: 0, allignment: .left, leadingAnchor: chatIconImage.trailingAnchor, trailingAnchor: chatBaseView.trailingAnchor, topAnchor: chatBaseView.topAnchor, leadingConstant: 10, trailingConstant: -(chatBaseView.frame.size.width)/2, topConstant: 15, heightAnchor: 32, widthAnchor: 0)
        UIHelper.setTextLabel(label: chatLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .regular, fontSize: 12, text: "Chat", kerning: 0.4)



        
        
        
    }
    
    func setupNavBarHubungiKami(){
    let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
    self.navigationItem.leftBarButtonItem = customButtonNav
    navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
    navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
    navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
    navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    UINavigationBar.appearance().isTranslucent = false
    navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "NOTIFIKASI", style: .plain, target: nil, action: nil)
    
       }
       
       @objc func backButtonTapped() {
           navigationController?.popViewController(animated: true)
           
       }
}
