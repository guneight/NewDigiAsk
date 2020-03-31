//
//  ExtensionAddPenerimaManfaatVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension AddTertanggungViewController{
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let height = view.frame.size.height
        view.addSubview(addPenerimaManfaatBaseView)
        UIHelper.makeView(view: addPenerimaManfaatBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: height , widthAnchor: 0)
        addPenerimaManfaatBaseView.backgroundColor = .white
        addPenerimaManfaatBaseView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: addPenerimaManfaatBaseView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaLengkapLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "Nama Lengkap", kerning: 0.12)
        
        addPenerimaManfaatBaseView.addSubview(namaLengkapTextField)
        UIHelper.makeTetxField(textField: namaLengkapTextField, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: namaLengkapTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 1)
        namaLengkapTextField.placeholder = "Nama lengkap"
        
        addPenerimaManfaatBaseView.addSubview(underlineNamaLengkap)
        UIHelper.makeView(view: underlineNamaLengkap, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: namaLengkapTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineNamaLengkap.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        addPenerimaManfaatBaseView.addSubview(nomorKTPLLabel)
        UIHelper.makeLabel(label: nomorKTPLLabel, corner: 0, allignment: .left, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: underlineNamaLengkap.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKTPLLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.12)
        
        addPenerimaManfaatBaseView.addSubview(nomorKTPTetxField)
        UIHelper.makeTetxField(textField: nomorKTPTetxField, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: nomorKTPLLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: nomorKTPTetxField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 1)
        nomorKTPTetxField.placeholder = "Nama lengkap"
        
        addPenerimaManfaatBaseView.addSubview(underlineNomorKTP)
        UIHelper.makeView(view: underlineNomorKTP, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: nomorKTPTetxField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineNomorKTP.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        addPenerimaManfaatBaseView.addSubview(emailLabel)
        UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: underlineNomorKTP.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: emailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "email", kerning: 0.12)
        
        addPenerimaManfaatBaseView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: emailLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: emailTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 1)
        emailTextField.placeholder = "Email"
        
        addPenerimaManfaatBaseView.addSubview(underlineEmail)
        UIHelper.makeView(view: underlineEmail, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)

        addPenerimaManfaatBaseView.addSubview(nomorTeleponLabel)
        UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: underlineEmail.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTeleponLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor telepon", kerning: 0.12)

        addPenerimaManfaatBaseView.addSubview(nomorTeleponTextField)
        UIHelper.makeTetxField(textField: nomorTeleponTextField, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: nomorTeleponLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: nomorTeleponTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 14, text: "", kerning: 1)
        nomorTeleponTextField.placeholder = "Nomor telepon"

        addPenerimaManfaatBaseView.addSubview(underlineNomorTelepon)
        UIHelper.makeView(view: underlineNomorTelepon, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: nomorTeleponTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineNomorTelepon.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)

        addPenerimaManfaatBaseView.addSubview(simpanButton)
        UIHelper.makeButton(button: simpanButton, leadingAnchor: addPenerimaManfaatBaseView.leadingAnchor, trailingAnchor: addPenerimaManfaatBaseView.trailingAnchor, topAnchor: underlineNomorTelepon.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        simpanButton.setTitle("SIMPAN", for: .normal)
        simpanButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
    }
    
    
    func setupNavBarAddPenerimaManfaat(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "DAFTAR PENERIMA MANFAAT", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
