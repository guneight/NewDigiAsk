//
//  ExtensionProsesKlaimVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension ProsesKlaimViewController {
    
    func setupUIProsesKlaim(){
        self.view.addSubview(prosesdKlaimScrollView)
            UIHelper.makeScroolView(scrollView: prosesdKlaimScrollView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, widthAnchor: 0, scrollAble: true, scrollShow: false)
            prosesdKlaimScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            prosesdKlaimScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        prosesdKlaimScrollView.addSubview(prosesKlaimView)
        UIHelper.makeView(view: prosesKlaimView, leadingAnchor: prosesdKlaimScrollView.leadingAnchor, trailingAnchor: prosesdKlaimScrollView.trailingAnchor, topAnchor: prosesdKlaimScrollView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 1100, widthAnchor: 0)
               
        prosesKlaimView.widthAnchor.constraint(equalTo: prosesdKlaimScrollView.widthAnchor).isActive = true
        prosesKlaimView.bottomAnchor.constraint(equalTo: prosesdKlaimScrollView.bottomAnchor).isActive = true
        let heightConstraint = prosesdKlaimScrollView.heightAnchor.constraint(equalTo: prosesdKlaimScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        prosesKlaimView.backgroundColor = .white
        
        prosesKlaimView.addSubview(dataDisiapkanLabel)
        UIHelper.makeLabel(label: dataDisiapkanLabel, corner: 0, allignment: .center, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: prosesKlaimView.topAnchor, leadingConstant: 80, trailingConstant: -80, topConstant: 22, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: dataDisiapkanLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "DATA YANG HARUS DISIAPKAN", kerning: 0.6)
        
        prosesKlaimView.addSubview(kartuIdentitasLabel)
        UIHelper.makeLabel(label: kartuIdentitasLabel, corner: 0, allignment: .left, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: dataDisiapkanLabel.bottomAnchor, leadingConstant: 25, trailingConstant: -25, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: kartuIdentitasLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "1 - Kartu Identitas (KTP)", kerning: 0.12)
        
        let deskripsiKartuINdentitas = "Lengkapi syarat syarat yang diperlukan untuk proses klaim yang Anda ajukan. untuk keterangan lebih jelas bisa hubungi Customer Services Kami."
        prosesKlaimView.addSubview(deskripsiKsrtuIdentitasLabel)
        UIHelper.makeLabel(label: deskripsiKsrtuIdentitasLabel, corner: 0, allignment: .left, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: kartuIdentitasLabel.bottomAnchor, leadingConstant: 42, trailingConstant: -25, topConstant: 5, heightAnchor: 50, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiKsrtuIdentitasLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: deskripsiKartuINdentitas, kerning: 0.12)
        deskripsiKsrtuIdentitasLabel.numberOfLines = 0
        
        prosesKlaimView.addSubview(suratBuktiKematianLabel)
        UIHelper.makeLabel(label: suratBuktiKematianLabel, corner: 0, allignment: .left, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: deskripsiKsrtuIdentitasLabel.bottomAnchor, leadingConstant: 25, trailingConstant: -25, topConstant: 6, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: suratBuktiKematianLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "2 - Surat Bukti Kematian", kerning: 0.12)
               
        let deskripsiBuktiKematian = "Lengkapi syarat syarat yang diperlukan untuk proses klaim yang Anda ajukan. untuk keterangan lebih jelas bisa hubungi Customer Services Kami."
        prosesKlaimView.addSubview(deskripsiBuktiKematianLabel)
        UIHelper.makeLabel(label: deskripsiBuktiKematianLabel, corner: 0, allignment: .left, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: suratBuktiKematianLabel.bottomAnchor, leadingConstant: 42, trailingConstant: -25, topConstant: 5, heightAnchor: 50, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiBuktiKematianLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: deskripsiBuktiKematian, kerning: 0.12)
        deskripsiBuktiKematianLabel.numberOfLines = 0
        
        prosesKlaimView.addSubview(kartuKeluargaLabel)
        UIHelper.makeLabel(label: kartuKeluargaLabel, corner: 0, allignment: .left, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: deskripsiBuktiKematianLabel.bottomAnchor, leadingConstant: 25, trailingConstant: -25, topConstant: 6, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: kartuKeluargaLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "3 - Kartu Keluarga", kerning: 0.12)
               
        let deskripsiKertuKeluarga = "Lengkapi syarat syarat yang diperlukan untuk proses klaim yang Anda ajukan. untuk keterangan lebih jelas bisa hubungi Customer Services Kami."
        prosesKlaimView.addSubview(deskripsiKartuKeluarga)
        UIHelper.makeLabel(label: deskripsiKartuKeluarga, corner: 0, allignment: .left, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: kartuKeluargaLabel.bottomAnchor, leadingConstant: 42, trailingConstant: -25, topConstant: 5, heightAnchor: 50, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiKartuKeluarga, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: deskripsiKertuKeluarga, kerning: 0.12)
        deskripsiKartuKeluarga.numberOfLines = 0
        
        prosesKlaimView.addSubview(dataPolisView)
        UIHelper.makeView(view: dataPolisView, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: deskripsiKartuKeluarga.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 25, corner: 10, heightAnchor: 150, widthAnchor: 0)
        dataPolisView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        dataPolisView.layer.borderWidth = 1
        
        dataPolisView.addSubview(headerNomorPolisLabel)
        UIHelper.makeLabel(label: headerNomorPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: dataPolisView.topAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNomorPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Polis", kerning: 0.5)
        
        dataPolisView.addSubview(nomorPolisLabel)
        UIHelper.makeLabel(label: nomorPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerNomorPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.5)
        
        dataPolisView.addSubview(headerStatusPolis)
        UIHelper.makeLabel(label: headerStatusPolis, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: nomorPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerStatusPolis, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Status polis", kerning: 0.5)
        
        dataPolisView.addSubview(statusPolisLabel)
        UIHelper.makeLabel(label: statusPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerStatusPolis.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: statusPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.5)
        
        dataPolisView.addSubview(headerMasaBerkaku)
        UIHelper.makeLabel(label: headerMasaBerkaku, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: statusPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerMasaBerkaku, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Masa berlaku", kerning: 0.5)
        
        dataPolisView.addSubview(masaBerlakuLabel)
        UIHelper.makeLabel(label: masaBerlakuLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerMasaBerkaku.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: masaBerlakuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Jumat, 1 nov 2019, 00.00 wib", kerning: 0.5)
        
        prosesKlaimView.addSubview(dataKlaimView)
        UIHelper.makeView(view: dataKlaimView, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: dataPolisView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, corner: 10, heightAnchor: 71, widthAnchor: 0)
        dataKlaimView.layer.borderWidth = 1
        dataKlaimView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        dataKlaimView.addSubview(dataKlaimLabel)
        UIHelper.makeLabel(label: dataKlaimLabel, corner: 0, allignment: .center, leadingAnchor: dataKlaimView.leadingAnchor, trailingAnchor: dataKlaimView.trailingAnchor, topAnchor: dataKlaimView.topAnchor, leadingConstant: 70, trailingConstant: -70, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: dataKlaimLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "DATA KLAIM", kerning: 0.5)

        dataKlaimView.addSubview(lineDataKlaim)
        UIHelper.makeView(view: lineDataKlaim, leadingAnchor: dataKlaimView.leadingAnchor, trailingAnchor: dataKlaimView.trailingAnchor, topAnchor: dataKlaimLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6.5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineDataKlaim.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

        dataKlaimView.addSubview(typeKlaim)
        UIHelper.makeSmalllabel(smallLabel: typeKlaim, leadingAnchor: dataKlaimView.leadingAnchor, topAnchor: lineDataKlaim.bottomAnchor, leadingConstant: 17, topConstant: 10, corner: 0, heightAnchor: 16, widthtAnchor: dataKlaimView.frame.size.width/2)
        UIHelper.setTextLabel(label: typeKlaim, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Type Klaim", kerning: 0.5)

        dataKlaimView.addSubview(namaTypeKlaim)
        UIHelper.makeSmalllabel(smallLabel: namaTypeKlaim, leadingAnchor: dataKlaimView.trailingAnchor, topAnchor: lineDataKlaim.bottomAnchor, leadingConstant: -(dataKlaimView.frame.size.width/2)-17, topConstant: 10, corner: 0, heightAnchor: 16, widthtAnchor: dataKlaimView.frame.size.width/2)
        namaTypeKlaim.textAlignment = .right
        UIHelper.setTextLabel(label: namaTypeKlaim, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Kematian", kerning: 0.5)
        
        prosesKlaimView.addSubview(lanjutButton)
        UIHelper.makeButton(button: lanjutButton, leadingAnchor: prosesKlaimView.leadingAnchor, trailingAnchor: prosesKlaimView.trailingAnchor, topAnchor: dataKlaimView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        lanjutButton.setTitle("LANJUT", for: .normal)
        lanjutButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
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
               title: "DAFTAR", style: .plain, target: nil, action: nil)
    }
    
    @objc func backButtonTapped() {
                navigationController?.popToRootViewController(animated: true)
              }
}
