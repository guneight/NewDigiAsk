//
//  ExtensionDaftarViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 19/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit



extension DaftarAccountViewController{
    
    func setupUIDaftarVC(){
        
        
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
    
    func scrollViews (){
        self.view.addSubview(scrollViewDaftar)
        UIHelper.makeScroolView(scrollView: scrollViewDaftar, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, widthAnchor: 0, scrollAble: true, scrollShow: false)
        scrollViewDaftar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        scrollViewDaftar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func formDaftar(){
        scrollViewDaftar.addSubview(viewDaftar)
        UIHelper.makeView(view: viewDaftar, leadingAnchor: scrollViewDaftar.leadingAnchor, trailingAnchor: scrollViewDaftar.trailingAnchor, topAnchor: scrollViewDaftar.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 1100, widthAnchor: 0)
        
        viewDaftar.widthAnchor.constraint(equalTo: scrollViewDaftar.widthAnchor).isActive = true
        viewDaftar.bottomAnchor.constraint(equalTo: scrollViewDaftar.bottomAnchor).isActive = true
        let heightConstraint = viewDaftar.heightAnchor.constraint(equalTo: scrollViewDaftar.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        viewDaftar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        viewDaftar.addSubview(labelTextfieldEmail)
        UIHelper.makeLabel(label: labelTextfieldEmail, corner: 0, allignment: .left, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: viewDaftar.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 31, heightAnchor: 18, widthAnchor: 0)
        labelTextfieldEmail.text = "Daftar dengan nomor hp atau email"
                labelTextfieldEmail.font = UIFont(name: "AvantGarde Bk BT", size: 15)
        
        viewDaftar.addSubview(textFieldEmail)
        UIHelper.makeTetxField(textField: textFieldEmail, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: labelTextfieldEmail.bottomAnchor, leadingConstant: 40, trailingConstant: -24, topConstant: 20, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.06274509804, green: 0.06274509804, blue: 0.06274509804, alpha: 1))
        textFieldEmail.font = UIFont(name: "AvantGarde Bk BT", size: 16)
        textFieldEmail.placeholder = "nomor hp atau email"
        
        
        viewDaftar.addSubview(labelEmail)
        UIHelper.makeLabel(label: labelEmail, corner: 0, allignment: .left, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: textFieldEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 15, heightAnchor: 1, widthAnchor: 0)
        
        labelEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)

        viewDaftar.addSubview(buttonDaftar)
        UIHelper.makeButton(button: buttonDaftar, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: labelEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 49, corner: 24, heightAnchor: 48, widthAnchor: 0)
        buttonDaftar.backgroundColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        buttonDaftar.setTitle("DAFTAR", for: .normal)
        buttonDaftar.setTitleColor(.white, for: .normal)
    
        viewDaftar.addSubview(labelMasukDengan)
        UIHelper.makeLabel(label: labelMasukDengan, corner: 0, allignment: .center, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: buttonDaftar.bottomAnchor, leadingConstant: 100, trailingConstant: -100, topConstant: 39, heightAnchor: 16, widthAnchor: 0)
        labelMasukDengan.text = "Atau masuk dengan "
        labelMasukDengan.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        labelMasukDengan.textColor =  #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)
        
        viewDaftar.addSubview(buttonSingInGoogle)
        UIHelper.makeButton(button: buttonSingInGoogle, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: labelMasukDengan.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 18, corner: 24, heightAnchor: 48, widthAnchor: 0)
        buttonSingInGoogle.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        buttonSingInGoogle.setTitle("SIGN IN WITH GOOGLE", for: .normal)
        buttonSingInGoogle.setTitleColor(#colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), for: .normal)
        buttonSingInGoogle.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        buttonSingInGoogle.layer.borderWidth = 1
        
        viewDaftar.addSubview(labelSudahPunyaAkun)
        UIHelper.makeLabel(label: labelSudahPunyaAkun, corner: 0, allignment: .right, leadingAnchor: viewDaftar.leadingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: buttonSingInGoogle.bottomAnchor, leadingConstant: 84, trailingConstant: -160, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        labelSudahPunyaAkun.text = "Sudah punya akun DigiAsk?"
        labelSudahPunyaAkun.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        labelSudahPunyaAkun.textColor = #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)
     
        
        viewDaftar.addSubview(masukButton)
        UIHelper.makeButton(button: masukButton, leadingAnchor: labelSudahPunyaAkun.trailingAnchor, trailingAnchor: viewDaftar.trailingAnchor, topAnchor: buttonSingInGoogle.bottomAnchor, leadingConstant: 0, trailingConstant: -84, topConstant: 10, corner: 0, heightAnchor: 16, widthAnchor: 0)
        masukButton.backgroundColor = UIColor.clear.withAlphaComponent(0)
        masukButton.setTitle(" Masuk", for: .normal)
        masukButton.setTitleColor(#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), for: .normal)
        masukButton.titleLabel?.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        masukButton.contentHorizontalAlignment = .left
      
        
    }
    
    
    
    
}

