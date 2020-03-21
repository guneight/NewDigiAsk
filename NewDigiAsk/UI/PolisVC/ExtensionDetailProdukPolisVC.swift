//
//  ExtensionDetailProdukPiolisVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailProdukPolisViewController {
    
    
    func setupUIDetailProdukPolis(){

        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(detailProdukPolisScrollView)
        UIHelper.makeScroolView(scrollView: detailProdukPolisScrollView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, widthAnchor: 0, scrollAble: true, scrollShow: false)
        
        detailProdukPolisScrollView.addSubview(detailProdukPolisView)
        detailProdukPolisView.translatesAutoresizingMaskIntoConstraints =  false
        NSLayoutConstraint.activate([
            detailProdukPolisView.leadingAnchor.constraint(equalTo: detailProdukPolisScrollView.leadingAnchor),
            detailProdukPolisView.trailingAnchor.constraint(equalTo: detailProdukPolisScrollView.trailingAnchor),
            detailProdukPolisView.topAnchor.constraint(equalTo: detailProdukPolisScrollView.topAnchor),
            detailProdukPolisView.widthAnchor.constraint(equalTo: detailProdukPolisScrollView.widthAnchor),
            detailProdukPolisView.bottomAnchor.constraint(equalTo: detailProdukPolisScrollView.bottomAnchor),
            detailProdukPolisView.heightAnchor.constraint(equalToConstant: 1100)
        ])
        let heightConstraint = detailProdukPolisView.heightAnchor.constraint(equalTo: detailProdukPolisScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        detailProdukPolisView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        detailProdukPolisView.layer.masksToBounds = true
        detailProdukPolisView.layer.cornerRadius = 20
        
        detailProdukPolisView.addSubview(backgroundNamaAsuransiView)
        UIHelper.makeView(view: backgroundNamaAsuransiView, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: detailProdukPolisView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, heightAnchor: 47, widthAnchor: 0)
        backgroundNamaAsuransiView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        
        backgroundNamaAsuransiView.addSubview(namaAsuransiLabel)
        UIHelper.makeLabel(label: namaAsuransiLabel, corner: 0, allignment: .left, leadingAnchor: backgroundNamaAsuransiView.leadingAnchor, trailingAnchor: backgroundNamaAsuransiView.trailingAnchor, topAnchor: backgroundNamaAsuransiView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaAsuransiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.12)
        
        detailProdukPolisView.addSubview(iconProdukImage)
        UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: detailProdukPolisView.leadingAnchor, topAnchor: backgroundNamaAsuransiView.bottomAnchor, leadingConstant: 23, topConstant: 24, corner: 10, heightAnchor: 57)
        iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
        iconProdukImage.image = UIImage(named: "Kecelakaan Diri")
        iconProdukImage.contentMode = .center
        iconProdukImage.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)
        
        detailProdukPolisView.addSubview(headerJenisLabel)
        UIHelper.makeLabel(label: headerJenisLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: backgroundNamaAsuransiView.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 24, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerJenisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Jenis", kerning: 0.5)
        
        detailProdukPolisView.addSubview(jenisLabel)
        UIHelper.makeLabel(label: jenisLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: backgroundNamaAsuransiView.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 24, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: jenisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "GOLD", kerning: 0.5)
        
        detailProdukPolisView.addSubview(headerJangkaWaktuLabel)
        UIHelper.makeLabel(label: headerJangkaWaktuLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: headerJenisLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerJangkaWaktuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Jangka Waktu", kerning: 0.5)
        
        detailProdukPolisView.addSubview(jangkaWaktuLabel)
        UIHelper.makeLabel(label: jangkaWaktuLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: jenisLabel.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: jangkaWaktuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "7 Hari", kerning: 0.5)
        
        detailProdukPolisView.addSubview(headerPremiLabel)
        UIHelper.makeLabel(label: headerPremiLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: headerJangkaWaktuLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerPremiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Premi", kerning: 0.5)
        
        detailProdukPolisView.addSubview(premiLabel)
        UIHelper.makeLabel(label: premiLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: jangkaWaktuLabel.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: premiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Rp 20.000", kerning: 0.5)
        
        detailProdukPolisView.addSubview(headerNilaiPertanggunganLabel)
        UIHelper.makeLabel(label: headerNilaiPertanggunganLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: headerPremiLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -120, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNilaiPertanggunganLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Premi", kerning: 0.5)
        
        detailProdukPolisView.addSubview(nilaiPetanggunganLabel)
        UIHelper.makeLabel(label: nilaiPetanggunganLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.trailingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: premiLabel.bottomAnchor, leadingConstant: -120, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiPetanggunganLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 30.000.000", kerning: 1)
        
        detailProdukPolisView.addSubview(backgroundIdentitasTertanggungView)
        UIHelper.makeView(view: backgroundIdentitasTertanggungView, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: iconProdukImage.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 24, corner: 0, heightAnchor: 47, widthAnchor: 0)
        backgroundIdentitasTertanggungView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        
        backgroundIdentitasTertanggungView.addSubview(identitasTertanggungLabel)
        UIHelper.makeLabel(label: identitasTertanggungLabel, corner: 0, allignment: .left, leadingAnchor: backgroundIdentitasTertanggungView.leadingAnchor, trailingAnchor: backgroundIdentitasTertanggungView.trailingAnchor, topAnchor: backgroundIdentitasTertanggungView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: identitasTertanggungLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Identitas Tertanggung", kerning: 0.12)
        
        detailProdukPolisView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: backgroundIdentitasTertanggungView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaLengkapLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nama lengkap", kerning: 0.5)
        
        detailProdukPolisView.addSubview(namaLengkapTextField)
        UIHelper.makeTetxField(textField: namaLengkapTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: namaLengkapTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nama lengkap", kerning: 0.8)
        namaLengkapTextField.placeholder = "Nama lengkap"
        
        detailProdukPolisView.addSubview(underlineNamaLengkap)
        UIHelper.makeView(view: underlineNamaLengkap, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: namaLengkapTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNamaLengkap.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(nomorKTPLabel)
        UIHelper.makeLabel(label: nomorKTPLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineNamaLengkap.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKTPLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
        
        detailProdukPolisView.addSubview(nomorKTPTextField)
        UIHelper.makeTetxField(textField: nomorKTPTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorKTPLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: nomorKTPTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nomor KTP", kerning: 0.8)
        
        detailProdukPolisView.addSubview(underlineNomorKTP)
        UIHelper.makeView(view: underlineNomorKTP, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorKTPTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNomorKTP.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(emailLabel)
        UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineNomorKTP.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: emailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Email", kerning: 0.5)
        
        detailProdukPolisView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: emailLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: emailTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Email", kerning: 0.8)
        
        detailProdukPolisView.addSubview(underlineEmail)
        UIHelper.makeView(view: underlineEmail, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(nomorTeleponLabel)
        UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineEmail.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTeleponLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor Telepon", kerning: 0.5)
        
        detailProdukPolisView.addSubview(nomorTeleponTextField)
        UIHelper.makeTetxField(textField: (nomorTeleponTextField), leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorTeleponLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: nomorTeleponTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "081345782154", kerning: 0.8)
        
        detailProdukPolisView.addSubview(underlineNomorTelepon)
        UIHelper.makeView(view: underlineNomorTelepon, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorTeleponTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNomorTelepon.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
       detailProdukPolisView.addSubview(backgroundIdentitasAhliWaris)
        UIHelper.makeView(view: backgroundIdentitasAhliWaris, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineNomorTelepon.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 24, corner: 0, heightAnchor: 47, widthAnchor: 0)
        backgroundIdentitasAhliWaris.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        
        backgroundIdentitasAhliWaris.addSubview(identitasAhliWarisLabel)
        UIHelper.makeLabel(label: identitasAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: backgroundIdentitasAhliWaris.leadingAnchor, trailingAnchor: backgroundIdentitasAhliWaris.trailingAnchor, topAnchor: backgroundIdentitasAhliWaris.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: identitasAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Identitas Ahli Waris", kerning: 0.12)
        
        detailProdukPolisView.addSubview(namaLengkapAhliWarisLabel)
        UIHelper.makeLabel(label: namaLengkapAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: backgroundIdentitasAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaLengkapAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nama lengkap", kerning: 0.5)
        
        detailProdukPolisView.addSubview(namaLengkapAhliWarisTextField)
        UIHelper.makeTetxField(textField: namaLengkapAhliWarisTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: namaLengkapAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: namaLengkapAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nama lengkap", kerning: 0.8)
        namaLengkapTextField.placeholder = "Nama lengkap"
        
        detailProdukPolisView.addSubview(underlineNamaLengkapAhliWaris)
        UIHelper.makeView(view: underlineNamaLengkapAhliWaris, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: namaLengkapAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNamaLengkapAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(nomorKTPAhliWarisLabel)
        UIHelper.makeLabel(label: nomorKTPAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineNamaLengkapAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKTPAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
        
        detailProdukPolisView.addSubview(nomorKTPAhliWarisTextField)
        UIHelper.makeTetxField(textField: nomorKTPAhliWarisTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorKTPAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: nomorKTPAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Nomor KTP", kerning: 0.8)
        
        detailProdukPolisView.addSubview(underlineNomorKtpAhliWaris)
        UIHelper.makeView(view: underlineNomorKtpAhliWaris, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorKTPAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineNomorKtpAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(emailAhliWarisLabel)
        UIHelper.makeLabel(label: emailAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineNomorKtpAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: emailAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Email", kerning: 0.5)
        
        detailProdukPolisView.addSubview(emailAhliWarisTextField)
        UIHelper.makeTetxField(textField: emailAhliWarisTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: emailAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: emailAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "Email", kerning: 0.8)
        
        detailProdukPolisView.addSubview(underlineEmailAhliWaris)
        UIHelper.makeView(view: underlineEmailAhliWaris, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: emailAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineEmailAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(nomorTeleponAhliWarisLabel)
        UIHelper.makeLabel(label: nomorTeleponAhliWarisLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineEmailAhliWaris.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTeleponAhliWarisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor Telepon", kerning: 0.5)
        
        detailProdukPolisView.addSubview(nomorTeleponAhliWarisTextField)
        UIHelper.makeTetxField(textField: (nomorTeleponAhliWarisTextField), leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorTeleponAhliWarisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: nomorTeleponAhliWarisTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "081345782154", kerning: 0.8)
        
        detailProdukPolisView.addSubview(underlineNomorTeleponAhliWaris)
               UIHelper.makeView(view: underlineNomorTeleponAhliWaris, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: nomorTeleponAhliWarisTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
               underlineNomorTeleponAhliWaris.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        detailProdukPolisView.addSubview(backgroundMasaAktif)
        UIHelper.makeView(view: backgroundMasaAktif, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: underlineNomorTeleponAhliWaris.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 24, corner: 0, heightAnchor: 47, widthAnchor: 0)
        backgroundMasaAktif.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        
        backgroundMasaAktif.addSubview(masaAktifLabel)
        UIHelper.makeLabel(label: masaAktifLabel, corner: 0, allignment: .left, leadingAnchor: backgroundMasaAktif.leadingAnchor, trailingAnchor: backgroundMasaAktif.trailingAnchor, topAnchor: backgroundMasaAktif.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 16, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: masaAktifLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Masa Aktif", kerning: 0.12)
        
        detailProdukPolisView.addSubview(pilihWaktuAktifPolisLabel)
        UIHelper.makeLabel(label: pilihWaktuAktifPolisLabel, corner: 0, allignment: .left, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: backgroundMasaAktif.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihWaktuAktifPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Pilih waktu aktif Polis", kerning: 0.5)
        
        detailProdukPolisView.addSubview(masaAktifTextField)
        UIHelper.makeTetxField(textField: masaAktifTextField, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: pilihWaktuAktifPolisLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 13, corner: 0, heightAnchor: 19, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: masaAktifTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .medium, fontSize: 16, text: "20/Desember/2019", kerning: 0.8)
      
        
        detailProdukPolisView.addSubview(underlinePilihWaktuPolis)
        UIHelper.makeView(view: underlinePilihWaktuPolis, leadingAnchor: detailProdukPolisView.leadingAnchor, trailingAnchor: detailProdukPolisView.trailingAnchor, topAnchor: masaAktifTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlinePilihWaktuPolis.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        
        
        
        
    }
    
    
    func setupNavBarDetailProdukPolis(){
        
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "DETAIL POLIS", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
