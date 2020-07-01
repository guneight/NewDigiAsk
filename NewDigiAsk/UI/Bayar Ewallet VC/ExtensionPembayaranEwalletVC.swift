//
//  ExtensionBayarLinkAjaVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension PembayaranEwalletViewController{
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(produkBaseView)
        produkBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkBaseView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            produkBaseView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            produkBaseView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            produkBaseView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        produkBaseView.layer.cornerRadius = 20
        produkBaseView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        produkBaseView.backgroundColor = #colorLiteral(red: 0.6549019608, green: 0.6980392157, blue: 0.8980392157, alpha: 0.7728756421)
        produkBaseView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2017337329)
        produkBaseView.layoutIfNeeded()
        
        produkBaseView.addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
             NSLayoutConstraint.activate([
                 lineView.widthAnchor.constraint(equalToConstant: 280),
                 lineView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 lineView.heightAnchor.constraint(equalToConstant: 2),
                 lineView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 32)
             ])
        lineView.backgroundColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        
        prosesStackView.translatesAutoresizingMaskIntoConstraints =  false
        produkBaseView.addSubview(prosesStackView)
        NSLayoutConstraint.activate([
            prosesStackView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 15),
            prosesStackView.widthAnchor.constraint(equalToConstant: 290),
            prosesStackView.centerXAnchor.constraint(equalTo: produkBaseView.centerXAnchor),
            prosesStackView.heightAnchor.constraint(equalToConstant: 35)
        ])
        prosesStackView.layoutIfNeeded()
        prosesStackView.backgroundColor?.withAlphaComponent(0)
        prosesStackView.alignment = .center
        prosesStackView.axis = .horizontal
        prosesStackView.distribution = UIStackView.Distribution.fillEqually
        
        prosesStackView.addArrangedSubview(produkImage)
        produkImage.translatesAutoresizingMaskIntoConstraints = false
        produkImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        produkImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        
        produkImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        produkImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        produkImage.image = UIImage(named: "produkIcon")
        produkImage.contentMode = .center
        produkImage.layer.masksToBounds = true
        produkImage.layer.cornerRadius = 17
        produkImage.layer.borderWidth = 1
        
        
        prosesStackView.addArrangedSubview(tertanggungImage)
        tertanggungImage.translatesAutoresizingMaskIntoConstraints = false
        tertanggungImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tertanggungImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        tertanggungImage.layer.masksToBounds = true
        tertanggungImage.layer.cornerRadius = 17
        tertanggungImage.image = UIImage(named: "profileIcon")
        tertanggungImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(kerangjangImage)
        kerangjangImage.translatesAutoresizingMaskIntoConstraints = false
        kerangjangImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        kerangjangImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        kerangjangImage.layer.masksToBounds = true
        kerangjangImage.layer.cornerRadius = 17
        kerangjangImage.image = UIImage(named: "keranjangIcon")
        kerangjangImage.contentMode = .center
        
        
        prosesStackView.addArrangedSubview(checkOutImage)
        checkOutImage.translatesAutoresizingMaskIntoConstraints = false
        checkOutImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        checkOutImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        checkOutImage.layer.masksToBounds = true
        checkOutImage.layer.cornerRadius = 17
        checkOutImage.image = UIImage(named: "rpIconWhite")
        checkOutImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(completeImage)
        completeImage.translatesAutoresizingMaskIntoConstraints = false
        completeImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        completeImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        completeImage.layer.masksToBounds = true
        completeImage.layer.cornerRadius = 17
        completeImage.image = UIImage(named: "checkfinishIcon")
        completeImage.contentMode = .center
        
        produkBaseView.addSubview(pembayaranEwalletBaseView)
        UIHelper.makeView(view: pembayaranEwalletBaseView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height-60, widthAnchor: 0)
        pembayaranEwalletBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        pembayaranEwalletBaseView.addSubview(totalPembayaranView)
        UIHelper.makeView(view: totalPembayaranView, leadingAnchor: pembayaranEwalletBaseView.leadingAnchor, trailingAnchor: pembayaranEwalletBaseView.trailingAnchor, topAnchor: pembayaranEwalletBaseView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, corner: 10, heightAnchor: 70, widthAnchor: 0)
        totalPembayaranView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        totalPembayaranView.layer.borderWidth = 1
        totalPembayaranView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        totalPembayaranView.addSubview(totalPembayaranHeaderLabel)
        UIHelper.makeLabel(label: totalPembayaranHeaderLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalPembayaranHeaderLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Total Pembayaran", kerning: 0.2)
        
        totalPembayaranView.addSubview(totalPembayaranLabel)
        UIHelper.makeLabel(label: totalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranHeaderLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalPembayaranLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 14, text: "Rp 3.000.000,-", kerning: 0.12)
        
        pembayaranEwalletBaseView.addSubview(ewalletView)
        UIHelper.makeView(view: ewalletView, leadingAnchor: pembayaranEwalletBaseView.leadingAnchor, trailingAnchor: pembayaranEwalletBaseView.trailingAnchor, topAnchor: totalPembayaranView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 12, corner: 10, heightAnchor: 132, widthAnchor: 0)
        ewalletView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        ewalletView.layer.borderWidth = 1
        ewalletView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        ewalletView.addSubview(ewalletIcon)
        UIHelper.makeImageView(imageView: ewalletIcon, leadingAnchor: ewalletView.leadingAnchor, topAnchor: ewalletView.topAnchor, leadingConstant: 20, topConstant: 8, corner: 0, heightAnchor: 26)
        ewalletIcon.widthAnchor.constraint(equalToConstant: 55).isActive = true
        ewalletIcon.contentMode = .scaleAspectFit
        
        
        ewalletView.addSubview(namaEwallet)
        UIHelper.makeLabel(label: namaEwallet, corner: 0, allignment: .right, leadingAnchor: ewalletIcon.trailingAnchor, trailingAnchor: ewalletView.trailingAnchor, topAnchor: ewalletView.topAnchor, leadingConstant: 50, trailingConstant: -20, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaEwallet, fontName: "AvantGardeITCbyBT-Demi", fontColor:#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.6)
        
        ewalletView.addSubview(underlineEwallet)
        UIHelper.makeView(view: underlineEwallet, leadingAnchor: ewalletView.leadingAnchor, trailingAnchor: ewalletView.trailingAnchor, topAnchor: ewalletIcon.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 1)
        underlineEwallet.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.2)
        
        ewalletView.addSubview(keteranganLabel)
        UIHelper.makeLabel(label: keteranganLabel, corner: 0, allignment: .left, leadingAnchor: ewalletView.leadingAnchor, trailingAnchor: ewalletView.trailingAnchor, topAnchor: underlineEwallet.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 12, heightAnchor: 62, widthAnchor: 0)
        UIHelper.setTextLabel(label: keteranganLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 0.7), weight: .regular, fontSize: 12, text: " ", kerning: 0.6)
        keteranganLabel.numberOfLines = 0
        
        if ewalletSelected == 0{
            ewalletIcon.image = UIImage(named: "ovo")
            namaEwallet.text = "OVO"
            keteranganLabel.text = "Anda akan diminta untuk memasukkan nomor sandi OVO Anda"
        }else if ewalletSelected == 1{
            ewalletIcon.image = UIImage(named: "gopay")
            namaEwallet.text = "Gopay"
            keteranganLabel.text = "Pastikan anda telah menginstall aplikasi Gojek agar dapat melakukan pembayaran"
        }else if ewalletSelected == 2{
            ewalletIcon.image = UIImage(named: "linkaja")
            namaEwallet.text = "LinkAja"
            keteranganLabel.text = "Anda akan diarahkan kehalaman LinkAja untuk melakukan pembayaran"
        }
        
        
        pembayaranEwalletBaseView.addSubview(lanjutButton)
        UIHelper.makeButton(button: lanjutButton, leadingAnchor: pembayaranEwalletBaseView.leadingAnchor, trailingAnchor: pembayaranEwalletBaseView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: -48, corner: 24, heightAnchor: 48, widthAnchor: 0)
        lanjutButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        lanjutButton.setTitle("LANJUT", for: .normal)
        
    }
    
    
    func setupNavBarBayarEwallet(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
        backItem.title = "PEMBAYARAN"
        let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
        backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
        navigationItem.leftBarButtonItems = [customButtonNav, backItem]
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
