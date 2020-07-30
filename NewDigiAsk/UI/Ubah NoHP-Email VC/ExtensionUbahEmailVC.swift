//
//  ExtensionUbahEmailVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension UbahEmailViewController{
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(ubahEmailBaseView)
        UIHelper.makeView(view: ubahEmailBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        ubahEmailBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        ubahEmailBaseView.addSubview(EmailLamaLabel)
        UIHelper.makeLabel(label: EmailLamaLabel, corner: 0, allignment: .left, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: ubahEmailBaseView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 40, heightAnchor: 13, widthAnchor: 0)
        UIHelper.setTextLabel(label: EmailLamaLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Email Lama", kerning: 0.06)
        
        ubahEmailBaseView.addSubview(EmailLamaTextField)
        UIHelper.makeTetxField(textField: EmailLamaTextField, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: EmailLamaLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        UIHelper.setTextField(textField: EmailLamaTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 0.5)
        EmailLamaTextField.placeholder = "Email Lama"
        
        ubahEmailBaseView.addSubview(underlineEmailLama)
        UIHelper.makeView(view: underlineEmailLama, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: EmailLamaTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineEmailLama.backgroundColor  = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        ubahEmailBaseView.addSubview(alertEmailLama)
        UIHelper.makeLabel(label: alertEmailLama, corner: 0, allignment: .right, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: underlineEmailLama.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: alertEmailLama, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 10, text: "Email yang Anda masukkan salah", kerning: 0.5)
        
        ubahEmailBaseView.addSubview(EmailBaruLabel)
        UIHelper.makeLabel(label: EmailBaruLabel, corner: 0, allignment: .left, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: alertEmailLama.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 34, heightAnchor: 13, widthAnchor: 0)
        UIHelper.setTextLabel(label: EmailBaruLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Email Baru", kerning: 0.06)

        ubahEmailBaseView.addSubview(EmailBaruTextField)
        UIHelper.makeTetxField(textField: EmailBaruTextField, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: EmailBaruLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        UIHelper.setTextField(textField: EmailBaruTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 0.5)
        EmailBaruTextField.placeholder = "Email Baru"

        ubahEmailBaseView.addSubview(underLineEmailBaru)
        UIHelper.makeView(view: underLineEmailBaru, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: EmailBaruTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineEmailBaru.backgroundColor  = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)

        ubahEmailBaseView.addSubview(alertEmailBaru)
        UIHelper.makeLabel(label: alertEmailBaru, corner: 0, allignment: .right, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: underLineEmailBaru.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: alertEmailBaru, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 10, text: "Email yang Anda masukkan salah", kerning: 0.5)
        
        ubahEmailBaseView.addSubview(selanjutnyaButton)
        UIHelper.makeButton(button: selanjutnyaButton, leadingAnchor: ubahEmailBaseView.leadingAnchor, trailingAnchor: ubahEmailBaseView.trailingAnchor, topAnchor: alertEmailBaru.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 54, corner: 24, heightAnchor: 48, widthAnchor: 0)
        selanjutnyaButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        let titleFont  = UIFont(name: fontNameHelper.NunitoExtraBold, size: 14)
        let titleAtribut = NSAttributedString(string: "SELANJUTNYA", attributes: [NSAttributedString.Key.font:titleFont!, NSAttributedString.Key.foregroundColor :UIColor.white])
        selanjutnyaButton.setAttributedTitle(titleAtribut, for: .normal)
        
        
        
    }
    
    func setupNavBarUbahEmail(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
        backItem.title = "PROFILE"
        let titleFont  = UIFont(name: fontNameHelper.NunitoExtraBold, size: 14)
        backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
        navigationItem.leftBarButtonItems = [customButtonNav, backItem]
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
    
}
