//
//  ExtensionLupaPasswordVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 30/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension LupaPasswordViewController{
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(lupaPasswordBaseView)
        UIHelper.makeView(view: lupaPasswordBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        lupaPasswordBaseView.backgroundColor = .white
        
        lupaPasswordBaseView.addSubview(kesulitanLabel)
        UIHelper.makeLabel(label: kesulitanLabel, corner: 0, allignment: .left, leadingAnchor: lupaPasswordBaseView.leadingAnchor, trailingAnchor: lupaPasswordBaseView.trailingAnchor, topAnchor: lupaPasswordBaseView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 34, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: kesulitanLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 15, text: "Kesulitan mengakses akun Anda?", kerning: 0.5)
        
        lupaPasswordBaseView.addSubview(alamatEmailLabel)
        UIHelper.makeLabel(label: alamatEmailLabel, corner: 0, allignment: .left, leadingAnchor: lupaPasswordBaseView.leadingAnchor, trailingAnchor: lupaPasswordBaseView.trailingAnchor, topAnchor: kesulitanLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20 , heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: alamatEmailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: "Alamat Email", kerning: 0.5)
        lupaPasswordBaseView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: lupaPasswordBaseView.leadingAnchor, trailingAnchor: lupaPasswordBaseView.trailingAnchor, topAnchor: alamatEmailLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 15, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: emailTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "", kerning: 0.5)
        emailTextField.placeholder = "Email"
        
        lupaPasswordBaseView.addSubview(underlineEmail)
        UIHelper.makeView(view: underlineEmail, leadingAnchor: lupaPasswordBaseView.leadingAnchor, trailingAnchor: lupaPasswordBaseView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 15, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        lupaPasswordBaseView.addSubview(gantiKataSandiButton)
        UIHelper.makeButton(button: gantiKataSandiButton, leadingAnchor: lupaPasswordBaseView.leadingAnchor, trailingAnchor: lupaPasswordBaseView.trailingAnchor, topAnchor: underlineEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 54, corner: 24, heightAnchor: 48, widthAnchor: 0)
        gantiKataSandiButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        gantiKataSandiButton.setTitle("GANTI KATA SANDI", for: .normal)
    }
    
    func setupNavBarLupaPassword(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "LOGIN", style: .plain, target: nil, action: nil)
    }
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
