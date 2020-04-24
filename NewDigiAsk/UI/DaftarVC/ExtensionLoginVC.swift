//
//  ExtensionLoginVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension LoginViewController{
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(loginsScrollView)
        loginsScrollView.translatesAutoresizingMaskIntoConstraints =  false
        NSLayoutConstraint.activate([
            loginsScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            loginsScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            loginsScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            loginsScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        loginsScrollView.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        loginsScrollView.isScrollEnabled = true
        loginsScrollView.showsVerticalScrollIndicator = false
        
        loginsScrollView.addSubview(backgroundImage)
        UIHelper.makeImageView(imageView: backgroundImage, leadingAnchor: loginsScrollView.leadingAnchor, topAnchor: loginsScrollView.topAnchor, leadingConstant: 0, topConstant: 40, corner: 0, heightAnchor: 135)
        backgroundImage.trailingAnchor.constraint(equalTo: loginsScrollView.trailingAnchor, constant: 0).isActive = true
        backgroundImage.image = UIImage(named: "atribut")
        backgroundImage.contentMode = .scaleAspectFill
        
        
        loginsScrollView.addSubview(logoImage)
        UIHelper.makeImageView(imageView: logoImage, leadingAnchor: loginsScrollView.leadingAnchor, topAnchor: loginsScrollView.topAnchor, leadingConstant: 112, topConstant: 20, corner: 0, heightAnchor: 55)
        logoImage.trailingAnchor.constraint(equalTo: loginsScrollView.trailingAnchor, constant: -112).isActive = true
        logoImage.image = UIImage(named: "Biglogo")
        logoImage.contentMode = .scaleAspectFit
        
        loginsScrollView.addSubview(loginBaseView)
        loginBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginBaseView.leadingAnchor.constraint(equalTo: loginsScrollView.leadingAnchor),
            loginBaseView.trailingAnchor.constraint(equalTo: loginsScrollView.trailingAnchor),
            loginBaseView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 70),
            loginBaseView.bottomAnchor.constraint(equalTo: loginsScrollView.bottomAnchor),
            loginBaseView.heightAnchor.constraint(equalToConstant: 900),
            loginBaseView.widthAnchor.constraint(equalTo: loginsScrollView.widthAnchor)
        ])
        let heightConstraint = loginBaseView.heightAnchor.constraint(equalTo: loginsScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        loginBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        loginBaseView.layer.masksToBounds = true
        loginBaseView.layer.cornerRadius = 20
        
        loginsScrollView.addSubview(silahkanMasukLabel)
        UIHelper.makeLabel(label: silahkanMasukLabel, corner: 0, allignment: .center, leadingAnchor: loginsScrollView.leadingAnchor, trailingAnchor: loginsScrollView.trailingAnchor, topAnchor: logoImage.bottomAnchor, leadingConstant: 70, trailingConstant: -70, topConstant: 10, heightAnchor: 46, widthAnchor: 0)
        UIHelper.setTextLabel(label: silahkanMasukLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), weight: .regular, fontSize: 12, text: "Silahkan masuk dengen nomor ponsel atau email", kerning: 0.1)
        silahkanMasukLabel.numberOfLines = 2
        
        passwordLabel.isHidden = true
        passwordTextField.isHidden = true
        underlinePassword.isHidden = true
        loginBaseView.addSubview(nomorPonselEmailLabel)
        UIHelper.makeLabel(label: nomorPonselEmailLabel, corner: 0, allignment: .left, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: loginBaseView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 34, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPonselEmailLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1), weight: .regular, fontSize: 14, text: "Nomor Ponsel/Email", kerning: 0.04)
        
        loginBaseView.addSubview(nomorPonseLEmailTextField)
        UIHelper.makeTetxField(textField: nomorPonseLEmailTextField, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: nomorPonselEmailLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 22, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        UIHelper.setTextField(textField: nomorPonseLEmailTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 1)
        nomorPonseLEmailTextField.placeholder = "Nomor ponsel atau email"
        
        loginBaseView.addSubview(underlineNomorPonselEmail)
        UIHelper.makeView(view: underlineNomorPonselEmail, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: nomorPonseLEmailTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNomorPonselEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)

        loginBaseView.addSubview(passwordLabel)
        UIHelper.makeLabel(label: passwordLabel, corner: 0, allignment: .left, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: underlineNomorPonselEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: passwordLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1), weight: .regular, fontSize: 14, text: "Password", kerning: 0.04)

        loginBaseView.addSubview(passwordTextField)
        UIHelper.makeTetxField(textField: passwordTextField, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: passwordLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 22, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        UIHelper.setTextField(textField: passwordTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 1)
        passwordTextField.placeholder = "Password"

        loginBaseView.addSubview(underlinePassword)
        UIHelper.makeView(view: underlinePassword, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: passwordTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlinePassword.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        loginBaseView.addSubview(continueButton)
        UIHelper.makeButton(button: continueButton, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: underlinePassword.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 35, corner: 24, heightAnchor: 48, widthAnchor: 0)
        continueButton.setTitle("CONTINUE", for: .normal)
        continueButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        loginBaseView.addSubview(atauMasukDenganLabel)
        UIHelper.makeLabel(label: atauMasukDenganLabel, corner: 0, allignment: .center, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: continueButton.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 18, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: atauMasukDenganLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: "Atau masuk dengan", kerning: 0.72)
        
        loginBaseView.addSubview(signInWithGoogleButton)
        UIHelper.makeButton(button: signInWithGoogleButton, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: atauMasukDenganLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 27, corner: 24, heightAnchor: 48, widthAnchor: 0)
        signInWithGoogleButton.setTitle("SIGN IN WITH GOOGLE", for: .normal)
        signInWithGoogleButton.setTitleColor(#colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), for: .normal)
        signInWithGoogleButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        signInWithGoogleButton.layer.borderWidth = 1
        signInWithGoogleButton.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        loginBaseView.addSubview(googleIconImage)
        UIHelper.makeImageView(imageView: googleIconImage, leadingAnchor: signInWithGoogleButton.leadingAnchor, topAnchor: signInWithGoogleButton.topAnchor, leadingConstant: 21, topConstant: 13, corner: 0, heightAnchor: 22)
        googleIconImage.widthAnchor.constraint(equalToConstant: 22).isActive = true
        googleIconImage.image = UIImage(named: "googleIcon")
    

        loginBaseView.addSubview(belumPunyaAkunLabel)
        UIHelper.makeLabel(label: belumPunyaAkunLabel, corner: 0, allignment: .center, leadingAnchor: loginBaseView.leadingAnchor, trailingAnchor: loginBaseView.trailingAnchor, topAnchor: signInWithGoogleButton.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: belumPunyaAkunLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: "Belum punya akun Digiask? Daftar disini", kerning: 0.72)
        belumPunyaAkunLabel.isUserInteractionEnabled = true
        
        
        
        
        
    }
    
    func setupNavBarLogin(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "DAFTAR", style: .plain, target: nil, action: nil)
    }
    @objc func backButtonTapped() {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
