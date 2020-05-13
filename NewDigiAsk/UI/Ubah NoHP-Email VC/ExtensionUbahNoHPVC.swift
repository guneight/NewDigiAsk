//
//  ExtensionUbahNoHPVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension UbahNoHPViewController{
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(ubahNoHPBaseView)
        UIHelper.makeView(view: ubahNoHPBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        ubahNoHPBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        ubahNoHPBaseView.addSubview(nomorPonselLamaLabel)
        UIHelper.makeLabel(label: nomorPonselLamaLabel, corner: 0, allignment: .left, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: ubahNoHPBaseView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 40, heightAnchor: 13, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPonselLamaLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Nomor Ponsel Lama", kerning: 0.06)
        
        ubahNoHPBaseView.addSubview(nomorPonselLamaTextField)
        UIHelper.makeTetxField(textField: nomorPonselLamaTextField, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: nomorPonselLamaLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        UIHelper.setTextField(textField: nomorPonselLamaTextField, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 0.5)
        nomorPonselLamaTextField.placeholder = "Nomor Ponsel Lama"
        
        ubahNoHPBaseView.addSubview(underlineNomorPonselLama)
        UIHelper.makeView(view: underlineNomorPonselLama, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: nomorPonselLamaTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNomorPonselLama.backgroundColor  = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        ubahNoHPBaseView.addSubview(alertNomorPonselLama)
        UIHelper.makeLabel(label: alertNomorPonselLama, corner: 0, allignment: .right, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: underlineNomorPonselLama.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: alertNomorPonselLama, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 10, text: "Nomor yang Anda masukkan salah", kerning: 0.5)
        
        ubahNoHPBaseView.addSubview(nomorPonselBaruLabel)
        UIHelper.makeLabel(label: nomorPonselBaruLabel, corner: 0, allignment: .left, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: alertNomorPonselLama.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 34, heightAnchor: 13, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPonselBaruLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Nomor Ponsel Baru", kerning: 0.06)

        ubahNoHPBaseView.addSubview(nomorPonselBaruTextField)
        UIHelper.makeTetxField(textField: nomorPonselBaruTextField, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: nomorPonselBaruLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        UIHelper.setTextField(textField: nomorPonselBaruTextField, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 0.5)
        nomorPonselBaruTextField.placeholder = "Nomor Ponsel Baru"

        ubahNoHPBaseView.addSubview(underLineNomorPonselBaru)
        UIHelper.makeView(view: underLineNomorPonselBaru, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: nomorPonselBaruTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineNomorPonselBaru.backgroundColor  = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)

        ubahNoHPBaseView.addSubview(alertNomorPonselBaru)
        UIHelper.makeLabel(label: alertNomorPonselBaru, corner: 0, allignment: .right, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: underLineNomorPonselBaru.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: alertNomorPonselBaru, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 10, text: "Nomor yang Anda masukkan salah", kerning: 0.5)
        
        ubahNoHPBaseView.addSubview(selanjutnyaButtons)
        UIHelper.makeButton(button: selanjutnyaButtons, leadingAnchor: ubahNoHPBaseView.leadingAnchor, trailingAnchor: ubahNoHPBaseView.trailingAnchor, topAnchor: alertNomorPonselBaru.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 54, corner: 24, heightAnchor: 48, widthAnchor: 0)
        selanjutnyaButtons.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
        let titleAtribut = NSAttributedString(string: "SELANJUTNYA", attributes: [NSAttributedString.Key.font:titleFont!, NSAttributedString.Key.foregroundColor :UIColor.white])
        selanjutnyaButtons.setAttributedTitle(titleAtribut, for: .normal)
        
        
        
    }
    
    func setupNavBarUbahNoHP(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
        backItem.title = "PROFILE"
        let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
        backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
        navigationItem.leftBarButtonItems = [customButtonNav, backItem]
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
    
    
}
