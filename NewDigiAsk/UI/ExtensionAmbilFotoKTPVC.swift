//
//  ExtensionAmbilFotoKTPVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension AmbilFotoKTPViewController {
    func setupUIAmbilKTP (){
        view.addSubview(ambilKTPView)
        ambilKTPView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ambilKTPView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ambilKTPView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ambilKTPView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            ambilKTPView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        ambilKTPView.addSubview(datadiSiapkan)
        UIHelper.makeLabel(label: datadiSiapkan, corner: 0, allignment: .center, leadingAnchor: ambilKTPView.leadingAnchor, trailingAnchor: ambilKTPView.trailingAnchor, topAnchor: ambilKTPView.topAnchor, leadingConstant: 70, trailingConstant: -70, topConstant: 26, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: datadiSiapkan, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "DATA YANG HARUS DISIAPKAN", kerning: 0.6)
        
        ambilKTPView.addSubview(kartuIdentitasLabel)
        UIHelper.makeLabel(label: kartuIdentitasLabel, corner: 0, allignment: .left, leadingAnchor: ambilKTPView.leadingAnchor, trailingAnchor: ambilKTPView.trailingAnchor, topAnchor: datadiSiapkan.bottomAnchor, leadingConstant: 23, trailingConstant: -23, topConstant: 13, heightAnchor: 16, widthAnchor: 0)
         UIHelper.setTextLabel(label: kartuIdentitasLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "1 - Kartu Identitas (KTP)", kerning: 0.12)
        
        ambilKTPView.addSubview(deskripsiKartuIdentitasLabel)
        UIHelper.makeLabel(label: deskripsiKartuIdentitasLabel, corner: 0, allignment: .left, leadingAnchor: ambilKTPView.leadingAnchor, trailingAnchor: ambilKTPView.trailingAnchor, topAnchor: kartuIdentitasLabel.bottomAnchor, leadingConstant: 42, trailingConstant: -30, topConstant: 5, heightAnchor: 47, widthAnchor: 0)
        
        UIHelper.setTextLabel(label: deskripsiKartuIdentitasLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Lengkapi syarat syarat yang diperlukan untuk proses klaim yang Anda ajukan. untuk keterangan lebih jelas bisa hubungi Customer Services Kami.", kerning: 0.06)
        deskripsiKartuIdentitasLabel.numberOfLines = 0
        
        ambilKTPView.addSubview(cameraIconImage)
        UIHelper.makeImageView(imageView: cameraIconImage, leadingAnchor: ambilKTPView.leadingAnchor, topAnchor: deskripsiKartuIdentitasLabel.bottomAnchor, leadingConstant: 21, topConstant: 25, corner: 10, heightAnchor: 192)
        cameraIconImage.trailingAnchor.constraint(equalTo: ambilKTPView.trailingAnchor, constant: -21).isActive = true
        cameraIconImage.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        cameraIconImage.layer.borderWidth = 1
        cameraIconImage.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        cameraIconImage.image = UIImage(named: "camera")
        cameraIconImage.contentMode = .center
        
        ambilKTPView.addSubview(keteranganFoto)
        UIHelper.makeLabel(label: keteranganFoto, corner: 0, allignment: .center, leadingAnchor: ambilKTPView.leadingAnchor, trailingAnchor: ambilKTPView.trailingAnchor, topAnchor: cameraIconImage.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: keteranganFoto, fontName: "Arial", fontColor: #colorLiteral(red: 0.6470588235, green: 0.6274509804, blue: 0.6274509804, alpha: 1), weight: .bold, fontSize: 10, text: "Foto KTP ataupun Bukti Identitas lainnya dari Ahli Waris", kerning: 0)
        
         ambilKTPView.addSubview(lanjutButton)
               lanjutButton.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   lanjutButton.leadingAnchor.constraint(equalTo: ambilKTPView.leadingAnchor, constant: 24),
                   lanjutButton.trailingAnchor.constraint(equalTo: ambilKTPView.trailingAnchor, constant: -24),
                   lanjutButton.bottomAnchor.constraint(equalTo: ambilKTPView.bottomAnchor, constant: -23),
                   lanjutButton.heightAnchor.constraint(equalToConstant: 48)
               ])
        lanjutButton.layer.masksToBounds = true
        lanjutButton.layer.borderColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        lanjutButton.layer.borderWidth = 1
        lanjutButton.layer.cornerRadius = 24
        lanjutButton.setTitle("LANJUT", for: .normal)
        lanjutButton.setTitleColor(#colorLiteral(red: 0.6470588235, green: 0.6274509804, blue: 0.6274509804, alpha: 1), for: .normal)
        
    }
    
    
    func setupNavBar(){
          let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
                 self.navigationItem.leftBarButtonItem = customButtonNav
                 navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
                 navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
                 navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                 navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
                 navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
                 UINavigationBar.appearance().isTranslucent = false
                 navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
                 title: "PROSES KLAIM", style: .plain, target: nil, action: nil)
      }
      
      @objc func backButtonTapped() {
//        let prosesKlaimVC = storyboard?.instantiateViewController(identifier: "ProsesKlaimViewController")  as! ProsesKlaimViewController
        navigationController?.popViewController(animated: true)
    
    }
}
    
