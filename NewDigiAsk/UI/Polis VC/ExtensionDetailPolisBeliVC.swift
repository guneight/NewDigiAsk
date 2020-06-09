//
//  ExtensionDetailPolisBeliVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailPolisBeliViewController{
    
    func setupUIDetailPolisBeli(){
        
        let height = view.frame.size.height
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(detailPolisBeli)
        UIHelper.makeView(view: detailPolisBeli, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: height, widthAnchor: 0)
        detailPolisBeli.backgroundColor = .white
        
        detailPolisBeli.addSubview(detailPolisBeliScrollView)
          UIHelper.makeScroolView(scrollView: detailPolisBeliScrollView, leadingAnchor: detailPolisBeli.leadingAnchor, trailingAnchor: detailPolisBeli.trailingAnchor, topAnchor: detailPolisBeli.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, widthAnchor: 0, scrollAble: true, scrollShow: false)
        detailPolisBeliScrollView.bottomAnchor.constraint(equalTo: detailPolisBeli.bottomAnchor).isActive = true
          
          detailPolisBeliScrollView.addSubview(detailPolisBeliView)
          detailPolisBeliView.translatesAutoresizingMaskIntoConstraints =  false
          NSLayoutConstraint.activate([
              detailPolisBeliView.leadingAnchor.constraint(equalTo: detailPolisBeliScrollView.leadingAnchor),
              detailPolisBeliView.trailingAnchor.constraint(equalTo: detailPolisBeliScrollView.trailingAnchor),
              detailPolisBeliView.topAnchor.constraint(equalTo: detailPolisBeliScrollView.topAnchor),
              detailPolisBeliView.widthAnchor.constraint(equalTo: detailPolisBeliScrollView.widthAnchor),
              detailPolisBeliView.bottomAnchor.constraint(equalTo: detailPolisBeliScrollView.bottomAnchor),
              detailPolisBeliView.heightAnchor.constraint(equalToConstant: 1200)
          ])
          let heightConstraint = detailPolisBeliView.heightAnchor.constraint(equalTo: detailPolisBeliScrollView.heightAnchor)
          heightConstraint.priority = UILayoutPriority(rawValue: 250)
          heightConstraint.isActive = true
          detailPolisBeliView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          detailPolisBeliView.layer.masksToBounds = true
          detailPolisBeliView.layer.cornerRadius = 20
          
          detailPolisBeliView.addSubview(backgroundNamaAsuransiView)
          UIHelper.makeView(view: backgroundNamaAsuransiView, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: detailPolisBeliView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, heightAnchor: 47, widthAnchor: 0)
          backgroundNamaAsuransiView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
          
          backgroundNamaAsuransiView.addSubview(namaAsuransiLabel)
          UIHelper.makeLabel(label: namaAsuransiLabel, corner: 0, allignment: .left, leadingAnchor: backgroundNamaAsuransiView.leadingAnchor, trailingAnchor: backgroundNamaAsuransiView.trailingAnchor, topAnchor: backgroundNamaAsuransiView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
          UIHelper.setTextLabel(label: namaAsuransiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.12)
          
          detailPolisBeliView.addSubview(iconProdukImage)
          UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: detailPolisBeliView.leadingAnchor, topAnchor: backgroundNamaAsuransiView.bottomAnchor, leadingConstant: 23, topConstant: 24, corner: 10, heightAnchor: 57)
          iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
          iconProdukImage.image = UIImage(named: "Kecelakaan Diri")
          iconProdukImage.contentMode = .center
          iconProdukImage.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)
          
          detailPolisBeliView.addSubview(headerJenisLabel)
          UIHelper.makeLabel(label: headerJenisLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: backgroundNamaAsuransiView.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 24, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: headerJenisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Jenis", kerning: 0.5)
          
          detailPolisBeliView.addSubview(jenisLabel)
          UIHelper.makeLabel(label: jenisLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: backgroundNamaAsuransiView.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 24, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: jenisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "GOLD", kerning: 0.5)
          
          detailPolisBeliView.addSubview(headerJangkaWaktuLabel)
          UIHelper.makeLabel(label: headerJangkaWaktuLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: headerJenisLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: headerJangkaWaktuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Jangka Waktu", kerning: 0.5)
          
          detailPolisBeliView.addSubview(jangkaWaktuLabel)
          UIHelper.makeLabel(label: jangkaWaktuLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: jenisLabel.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: jangkaWaktuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "7 Hari", kerning: 0.5)
          
          detailPolisBeliView.addSubview(headerPremiLabel)
          UIHelper.makeLabel(label: headerPremiLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: headerJangkaWaktuLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: headerPremiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Premi", kerning: 0.5)
          
          detailPolisBeliView.addSubview(premiLabel)
          UIHelper.makeLabel(label: premiLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: jangkaWaktuLabel.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: premiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Rp 20.000", kerning: 0.5)
          
          detailPolisBeliView.addSubview(headerNilaiPertanggunganLabel)
          UIHelper.makeLabel(label: headerNilaiPertanggunganLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: headerPremiLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: headerNilaiPertanggunganLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Premi", kerning: 0.5)
          
          detailPolisBeliView.addSubview(nilaiPetanggunganLabel)
          UIHelper.makeLabel(label: nilaiPetanggunganLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.trailingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: premiLabel.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: nilaiPetanggunganLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 30.000.000", kerning: 1)
          
          detailPolisBeliView.addSubview(backgroundIdentitasTertanggungView)
          UIHelper.makeView(view: backgroundIdentitasTertanggungView, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: iconProdukImage.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 24, corner: 0, heightAnchor: 47, widthAnchor: 0)
          backgroundIdentitasTertanggungView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
          
          backgroundIdentitasTertanggungView.addSubview(identitasTertanggungLabel)
          UIHelper.makeLabel(label: identitasTertanggungLabel, corner: 0, allignment: .left, leadingAnchor: backgroundIdentitasTertanggungView.leadingAnchor, trailingAnchor: backgroundIdentitasTertanggungView.trailingAnchor, topAnchor: backgroundIdentitasTertanggungView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
          UIHelper.setTextLabel(label: identitasTertanggungLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Identitas Tertanggung", kerning: 0.12)
          
          detailPolisBeliView.addSubview(namaLengkapLabel)
          UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: backgroundIdentitasTertanggungView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: namaLengkapLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nama lengkap", kerning: 0.5)
          
          detailPolisBeliView.addSubview(namaLengkapTextField)
          UIHelper.makeTetxField(textField: namaLengkapTextField, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: namaLengkapTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nama lengkap", kerning: 0.8)
          namaLengkapTextField.placeholder = "Nama lengkap"
          
          detailPolisBeliView.addSubview(underlineNamaLengkap)
          UIHelper.makeView(view: underlineNamaLengkap, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: namaLengkapTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineNamaLengkap.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
          detailPolisBeliView.addSubview(nomorKTPLabel)
          UIHelper.makeLabel(label: nomorKTPLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineNamaLengkap.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: nomorKTPLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
          
          detailPolisBeliView.addSubview(nomorKTPTextField)
          UIHelper.makeTetxField(textField: nomorKTPTextField, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorKTPLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: nomorKTPTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nomor KTP", kerning: 0.8)
          
          detailPolisBeliView.addSubview(underlineNomorKTP)
          UIHelper.makeView(view: underlineNomorKTP, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorKTPTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineNomorKTP.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
          detailPolisBeliView.addSubview(emailLabel)
          UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineNomorKTP.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: emailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Email", kerning: 0.5)
          
          detailPolisBeliView.addSubview(emailTextField)
          UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: emailLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: emailTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Email", kerning: 0.8)
          
          detailPolisBeliView.addSubview(underlineEmail)
          UIHelper.makeView(view: underlineEmail, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
          detailPolisBeliView.addSubview(nomorTeleponLabel)
          UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: nomorTeleponLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor Telepon", kerning: 0.5)
          
          detailPolisBeliView.addSubview(nomorTeleponTextField)
          UIHelper.makeTetxField(textField: (nomorTeleponTextField), leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorTeleponLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: nomorTeleponTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "081345782154", kerning: 0.8)
          
          detailPolisBeliView.addSubview(underlineNomorTelepon)
          UIHelper.makeView(view: underlineNomorTelepon, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorTeleponTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineNomorTelepon.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
         detailPolisBeliView.addSubview(backgroundIdentitasAhliWaris)
          UIHelper.makeView(view: backgroundIdentitasAhliWaris, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineNomorTelepon.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 24, corner: 0, heightAnchor: 47, widthAnchor: 0)
          backgroundIdentitasAhliWaris.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
          
          backgroundIdentitasAhliWaris.addSubview(identitasAhliWarisLabel)
          UIHelper.makeLabel(label: identitasAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: backgroundIdentitasAhliWaris.leadingAnchor, trailingAnchor: backgroundIdentitasAhliWaris.trailingAnchor, topAnchor: backgroundIdentitasAhliWaris.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
          UIHelper.setTextLabel(label: identitasAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Identitas Ahli Waris", kerning: 0.12)
          
          detailPolisBeliView.addSubview(namaLengkapAhliWarisLabel)
          UIHelper.makeLabel(label: namaLengkapAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: backgroundIdentitasAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: namaLengkapAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nama lengkap", kerning: 0.5)
          
          detailPolisBeliView.addSubview(namaLengkapAhliWarisTextField)
          UIHelper.makeTetxField(textField: namaLengkapAhliWarisTextField, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: namaLengkapAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: namaLengkapAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nama lengkap", kerning: 0.8)
          namaLengkapTextField.placeholder = "Nama lengkap"
          
          detailPolisBeliView.addSubview(underlineNamaLengkapAhliWaris)
          UIHelper.makeView(view: underlineNamaLengkapAhliWaris, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: namaLengkapAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineNamaLengkapAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
          detailPolisBeliView.addSubview(nomorKTPAhliWarisLabel)
          UIHelper.makeLabel(label: nomorKTPAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineNamaLengkapAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: nomorKTPAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
          
          detailPolisBeliView.addSubview(nomorKTPAhliWarisTextField)
          UIHelper.makeTetxField(textField: nomorKTPAhliWarisTextField, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorKTPAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: nomorKTPAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nomor KTP", kerning: 0.8)
          
          detailPolisBeliView.addSubview(underlineNomorKtpAhliWaris)
          UIHelper.makeView(view: underlineNomorKtpAhliWaris, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorKTPAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineNomorKtpAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
          detailPolisBeliView.addSubview(emailAhliWarisLabel)
          UIHelper.makeLabel(label: emailAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineNomorKtpAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: emailAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Email", kerning: 0.5)
          
          detailPolisBeliView.addSubview(emailAhliWarisTextField)
          UIHelper.makeTetxField(textField: emailAhliWarisTextField, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: emailAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: emailAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Email", kerning: 0.8)
          
          detailPolisBeliView.addSubview(underlineEmailAhliWaris)
          UIHelper.makeView(view: underlineEmailAhliWaris, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: emailAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
          underlineEmailAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
          
          detailPolisBeliView.addSubview(nomorTeleponAhliWarisLabel)
          UIHelper.makeLabel(label: nomorTeleponAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineEmailAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
          UIHelper.setTextLabel(label: nomorTeleponAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor Telepon", kerning: 0.5)
          
          detailPolisBeliView.addSubview(nomorTeleponAhliWarisTextField)
          UIHelper.makeTetxField(textField: (nomorTeleponAhliWarisTextField), leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorTeleponAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
          
          UIHelper.setTextField(textField: nomorTeleponAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "081345782154", kerning: 0.8)
          
          detailPolisBeliView.addSubview(underlineNomorTeleponAhliWaris)
                 UIHelper.makeView(view: underlineNomorTeleponAhliWaris, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: nomorTeleponAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
                 underlineNomorTeleponAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailPolisBeliView.addSubview(saveButton)
        UIHelper.makeButton(button: saveButton, leadingAnchor: detailPolisBeliView.leadingAnchor, trailingAnchor: detailPolisBeliView.trailingAnchor, topAnchor: underlineNomorTeleponAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 30, corner: 24, heightAnchor: 48, widthAnchor: 0)
        saveButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        saveButton.setTitle("SAVE", for: .normal)
    }
    
    func setupNavBar(){
           let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
           self.navigationItem.leftBarButtonItem = customButtonNav
           navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
           navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
           let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
                  UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "KERANJANG", kerning: 0)
                  navigationItem.titleView = titleLabel
       }
       @objc func backButtonTapped() {
           navigationController?.popViewController(animated: true)
       }

}
