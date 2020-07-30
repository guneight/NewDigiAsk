//
//  ExtensionLengkapiDataEmailVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 23/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension LengkapiDataEmailViewController{
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(lengkapiDataEmailBaseView)
        UIHelper.makeView(view: lengkapiDataEmailBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        lengkapiDataEmailBaseView.backgroundColor = .white
        
        lengkapiDataEmailBaseView.addSubview(masukDenganEmailLabel)
        UIHelper.makeLabel(label: masukDenganEmailLabel, corner: 0, allignment: .left, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: lengkapiDataEmailBaseView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 33, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: masukDenganEmailLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 12, text: "Masuk dengan email", kerning: 1)
        
        lengkapiDataEmailBaseView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: masukDenganEmailLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 22, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: emailTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .regular , fontSize: 16, text: "", kerning: 0.8)
        emailTextField.placeholder = "Email"
        
        lengkapiDataEmailBaseView.addSubview(underlineEmail)
        UIHelper.makeView(view: underlineEmail, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        lengkapiDataEmailBaseView.addSubview(aktivasiLabel)
        UIHelper.makeLabel(label: aktivasiLabel, corner: 0, allignment: .right, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: underlineEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: aktivasiLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .light, fontSize: 12, text: "Kami akan mengirimkan link aktivasi melalui email", kerning: 1)
        
        lengkapiDataEmailBaseView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: aktivasiLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant:10, heightAnchor: 14, widthAnchor: 0)
        
        UIHelper.setTextLabel(label: namaLengkapLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Nama langkap", kerning: 1)
        
        lengkapiDataEmailBaseView.addSubview(namaLengkaTextField)
        UIHelper.makeTetxField(textField: namaLengkaTextField, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: namaLengkaTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 1)
        namaLengkaTextField.placeholder = "Nama lengkap"
        
        lengkapiDataEmailBaseView.addSubview(underlineNamaLengkap)
        UIHelper.makeView(view: underlineNamaLengkap, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: namaLengkaTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 17, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNamaLengkap.backgroundColor =  #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        lengkapiDataEmailBaseView.addSubview(kataSandiLabel)
        UIHelper.makeLabel(label: kataSandiLabel, corner: 0, allignment: .left, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: underlineNamaLengkap.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: kataSandiLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Password", kerning: 1)
        
        lengkapiDataEmailBaseView.addSubview(kataSandiTextField)
        UIHelper.makeTetxField(textField: kataSandiTextField, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: kataSandiLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.7058823529, green: 0.7058823529, blue: 0.7058823529, alpha: 1))
        
        UIHelper.setTextField(textField: kataSandiTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.7058823529, green: 0.7058823529, blue: 0.7058823529, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 1)
        kataSandiTextField.placeholder = "Password"
        
        lengkapiDataEmailBaseView.addSubview(underlineKataSandi)
        UIHelper.makeView(view: underlineKataSandi, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: kataSandiTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineKataSandi.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        lengkapiDataEmailBaseView.addSubview(minimalKarakter)
        UIHelper.makeLabel(label: minimalKarakter, corner: 0, allignment: .right, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: underlineKataSandi.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: minimalKarakter, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Minimal 6 karakter", kerning: 1)
        
        lengkapiDataEmailBaseView.addSubview(ulangKataSandi)
        UIHelper.makeLabel(label: ulangKataSandi, corner: 0, allignment: .left, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: minimalKarakter.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: ulangKataSandi, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Konfirmasi password", kerning: 1)
        
        lengkapiDataEmailBaseView.addSubview(ulangKataSandiTextField)
        UIHelper.makeTetxField(textField: ulangKataSandiTextField, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: ulangKataSandi.bottomAnchor, leadingConstant: 44, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.7058823529, green: 0.7058823529, blue: 0.7058823529, alpha: 1))
        
        UIHelper.setTextField(textField: ulangKataSandiTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.7058823529, green: 0.7058823529, blue: 0.7058823529, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 1)
        ulangKataSandiTextField.placeholder = "Password"
        
        lengkapiDataEmailBaseView.addSubview(underlineUlangKataSandi)
        UIHelper.makeView(view: underlineUlangKataSandi, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: ulangKataSandiTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineUlangKataSandi.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        lengkapiDataEmailBaseView.addSubview(daftarButton)
        UIHelper.makeButton(button: daftarButton, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: underlineUlangKataSandi.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 30, corner: 24, heightAnchor: 48, widthAnchor: 0)
        daftarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        daftarButton.setTitle("DAFTAR", for: .normal)
        
        lengkapiDataEmailBaseView.addSubview(syaratLabel)
        UIHelper.makeLabel(label: syaratLabel, corner:0, allignment: .center, leadingAnchor: lengkapiDataEmailBaseView.leadingAnchor, trailingAnchor: lengkapiDataEmailBaseView.trailingAnchor, topAnchor: daftarButton.bottomAnchor, leadingConstant: 60, trailingConstant: -60, topConstant: 24, heightAnchor: 30, widthAnchor: 0)
        UIHelper.setTextLabel(label: syaratLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Dengan mendaftar, saya menyetujui Syarat dan ketentuan serta Kebijakan Privasi", kerning: 0.5)
        syaratLabel.numberOfLines = 2
        
        
    }
    
    func setupUINavBarLengkapiData() {
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
        navigationController?.popViewController(animated: true)
    }
}
