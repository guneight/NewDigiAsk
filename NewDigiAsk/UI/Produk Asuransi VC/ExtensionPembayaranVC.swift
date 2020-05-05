//
//  ExtensionPembayaranVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension PembayaranViewController{
    
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
        UIHelper.makeView(view: lineView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: (view.frame.size.width-290)/2 , trailingConstant: -((view.frame.size.width-290)/2), topConstant: 32, corner: 0, heightAnchor: 2, widthAnchor: 0)
        lineView.widthAnchor.constraint(equalToConstant: view.frame.size.width-290).isActive = true
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
        
        produkBaseView.addSubview(pembayaranView)
        UIHelper.makeView(view: pembayaranView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: 0, widthAnchor: 0)
        pembayaranView.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor).isActive = true
        pembayaranView.backgroundColor = .white
        
        pembayaranView.addSubview(totalPembayaranView)
        UIHelper.makeView(view: totalPembayaranView, leadingAnchor: pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: pembayaranView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 21, corner: 10, heightAnchor: 71, widthAnchor: 0)
        totalPembayaranView.layer.borderWidth = 0.5
        totalPembayaranView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        totalPembayaranView.addSubview(totalPemabayaranLabel)
        UIHelper.makeLabel(label: totalPemabayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranView.topAnchor, leadingConstant: 15, trailingConstant: -15, topConstant: 15, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalPemabayaranLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Total Pembayaran", kerning: 0.12)
        
        totalPembayaranView.addSubview(nilaiTotalPembayaranLabel)
        UIHelper.makeLabel(label: nilaiTotalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: nilaiTotalPembayaranLabel.trailingAnchor, topAnchor: totalPemabayaranLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -15, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiTotalPembayaranLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 30.000.000,-", kerning: 0.12)
        
        pembayaranView.addSubview(pilihMetodePembayaranLabel)
        UIHelper.makeLabel(label: pilihMetodePembayaranLabel, corner: 0, allignment:.left, leadingAnchor:pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: totalPembayaranView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 25, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihMetodePembayaranLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Pilin Metode Pembayaran", kerning: 0.12)
        
        pembayaranView.addSubview(virtualAccountLabel)
        UIHelper.makeLabel(label: virtualAccountLabel, corner: 0, allignment: .left, leadingAnchor: pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: pilihMetodePembayaranLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: virtualAccountLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Virtual Account", kerning: 0.12)
        
        pembayaranView.addSubview(virtualAccountView)
        UIHelper.makeView(view: virtualAccountView, leadingAnchor: pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: virtualAccountLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 110, widthAnchor: 0)
        virtualAccountView.layer.borderWidth = 0.5
        virtualAccountView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        virtualAccountView.addSubview(iconBCAimage)
        UIHelper.makeImageView(imageView: iconBCAimage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: 12, topConstant: 20, corner: 0, heightAnchor: 13)
        iconBCAimage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconBCAimage.image = UIImage(named: "bca")
        
        virtualAccountView.addSubview(virtualAccountBCALabel)
        UIHelper.makeLabel(label: virtualAccountBCALabel, corner: 0, allignment: .left, leadingAnchor: iconBCAimage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: 12, trailingConstant: 50, topConstant: 20, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: virtualAccountBCALabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "BCA Virtual Account", kerning: 0.6)
        
        virtualAccountView.addSubview(rightButtonBCA)
        UIHelper.makeSmallButton(smallButton: rightButtonBCA, leadingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: -30, topConstant: 17, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rightButtonBCA.setImage(UIImage(named: "next"), for: .normal)
        rightButtonBCA.contentMode = .center
        
        virtualAccountView.addSubview(iconMandiriImage)
        UIHelper.makeImageView(imageView: iconMandiriImage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: iconBCAimage.bottomAnchor, leadingConstant: 12, topConstant: 15, corner: 0, heightAnchor: 13)
        iconMandiriImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconMandiriImage.image = UIImage(named: "mandiri")
        
        virtualAccountView.addSubview(virtualAccountMandiriLabel)
        UIHelper.makeLabel(label: virtualAccountMandiriLabel, corner: 0, allignment: .left, leadingAnchor: iconMandiriImage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor:virtualAccountBCALabel.bottomAnchor, leadingConstant: 12, trailingConstant: 50, topConstant: 15, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: virtualAccountMandiriLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Mandiri Virtual Account", kerning: 0.6)
        
        virtualAccountView.addSubview(rightButtonMandiri)
        UIHelper.makeSmallButton(smallButton: rightButtonMandiri, leadingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountBCALabel.bottomAnchor, leadingConstant: -30, topConstant: 15, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rightButtonMandiri.setImage(UIImage(named: "next"), for: .normal)
        rightButtonMandiri.contentMode = .center
        
        virtualAccountView.addSubview(iconBNIImage)
        UIHelper.makeImageView(imageView: iconBNIImage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: iconMandiriImage.topAnchor, leadingConstant: 12, topConstant: 35, corner: 0, heightAnchor: 13)
        iconBNIImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconBNIImage.image = UIImage(named: "bni")
        
        virtualAccountView.addSubview(virtualAccountBNILabel)
        UIHelper.makeLabel(label: virtualAccountBNILabel, corner: 0, allignment: .left, leadingAnchor: iconBNIImage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor:virtualAccountMandiriLabel.bottomAnchor, leadingConstant: 12, trailingConstant: 50, topConstant: 15, heightAnchor: 17, widthAnchor: 0)
        virtualAccountBNILabel.text = "BNI Virtual Account"
        UIHelper.setTextLabel(label: virtualAccountBNILabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "BNI Virtual Account", kerning: 0.6)
        
        virtualAccountView.addSubview(rightButtonBNI)
        UIHelper.makeSmallButton(smallButton: rightButtonBNI, leadingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountMandiriLabel.bottomAnchor, leadingConstant: -30, topConstant: 15, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rightButtonBNI.setImage(UIImage(named: "next"), for: .normal)
        rightButtonBNI.contentMode = .center
        
        view.addSubview(KartuKreditLabel)
        UIHelper.makeLabel(label: KartuKreditLabel, corner: 0, allignment: .left, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: virtualAccountView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 35, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: KartuKreditLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Kartu Kredit", kerning: 0.12)
        
        pembayaranView.addSubview(kartuKreditView)
        UIHelper.makeView(view: kartuKreditView, leadingAnchor: pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: KartuKreditLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 36, widthAnchor: 0)
        kartuKreditView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        kartuKreditView.layer.borderWidth = 0.5
        
        kartuKreditView.addSubview(iconKartuKreditImage)
        UIHelper.makeImageView(imageView: iconKartuKreditImage, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: kartuKreditView.topAnchor, leadingConstant: 12, topConstant:12 , corner: 0, heightAnchor: 14)
        iconKartuKreditImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconKartuKreditImage.image = UIImage(named: "kartuKredit")
        iconKartuKreditImage.contentMode = .scaleAspectFit
        
        kartuKreditView.addSubview(nomorkartuKreditLabel)
        UIHelper.makeLabel(label: nomorkartuKreditLabel, corner: 0, allignment: .left, leadingAnchor: iconKartuKreditImage.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: kartuKreditView.topAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorkartuKreditLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Kartu Kredit", kerning: 0.12)
        
        kartuKreditView.addSubview(rightButtonKartuKredit)
        UIHelper.makeSmallButton(smallButton: rightButtonKartuKredit, leadingAnchor: kartuKreditView.trailingAnchor, topAnchor: kartuKreditView.topAnchor, leadingConstant: -30, topConstant: 12, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rightButtonKartuKredit.setImage(UIImage(named: "next"), for: .normal )
        
        pembayaranView.addSubview(uangElektronikLabel)
        UIHelper.makeLabel(label: uangElektronikLabel, corner: 0, allignment: .left, leadingAnchor: pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: kartuKreditView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: uangElektronikLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Uang Electronik", kerning: 0.12)
        
        pembayaranView.addSubview(uangElektronikView)
        UIHelper.makeView(view: uangElektronikView, leadingAnchor: pembayaranView.leadingAnchor, trailingAnchor: pembayaranView.trailingAnchor, topAnchor: uangElektronikLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 110, widthAnchor: 0)
        uangElektronikView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        uangElektronikView.layer.borderWidth = 0.5
        
        uangElektronikView.addSubview(iconOVOImage)
        UIHelper.makeImageView(imageView: iconOVOImage, leadingAnchor: uangElektronikView.leadingAnchor, topAnchor: uangElektronikView.topAnchor, leadingConstant: 12, topConstant: 12, corner: 0, heightAnchor: 16)
        iconOVOImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconOVOImage.image = UIImage(named: "ovo")
        iconOVOImage.contentMode = .scaleAspectFit
        
        uangElektronikView.addSubview(ovoLabel)
        UIHelper.makeLabel(label: ovoLabel, corner: 0, allignment: .left, leadingAnchor: iconOVOImage.trailingAnchor, trailingAnchor: uangElektronikView.trailingAnchor, topAnchor: uangElektronikView.topAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: ovoLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "OVO", kerning: 0.6)
        
        uangElektronikView.addSubview(rigthButtonOVO)
        UIHelper.makeSmallButton(smallButton: rigthButtonOVO, leadingAnchor: uangElektronikView.trailingAnchor, topAnchor: uangElektronikView.topAnchor, leadingConstant: -30, topConstant: 15, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rigthButtonOVO.setImage(UIImage(named: "next"), for: .normal )
        
        uangElektronikView.addSubview(iconGopayImage)
        UIHelper.makeImageView(imageView: iconGopayImage, leadingAnchor: uangElektronikView.leadingAnchor, topAnchor: iconOVOImage.bottomAnchor, leadingConstant: 12, topConstant: 15, corner: 0, heightAnchor: 16)
        iconGopayImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconGopayImage.image = UIImage(named: "gopay")
        iconGopayImage.contentMode = .scaleAspectFit
        
        uangElektronikView.addSubview(gopayLabel)
        UIHelper.makeLabel(label: gopayLabel, corner: 0, allignment: .left, leadingAnchor: iconGopayImage.trailingAnchor, trailingAnchor: uangElektronikView.trailingAnchor, topAnchor: ovoLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: gopayLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Gopay", kerning: 0.6)
        
        uangElektronikView.addSubview(rigthButtonGopay)
        UIHelper.makeSmallButton(smallButton: rigthButtonGopay, leadingAnchor: uangElektronikView.trailingAnchor, topAnchor: ovoLabel.bottomAnchor, leadingConstant: -30, topConstant: 20, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rigthButtonGopay.setImage(UIImage(named: "next"), for: .normal )
        
        uangElektronikView.addSubview(iconLinAjaImage)
        UIHelper.makeImageView(imageView: iconLinAjaImage, leadingAnchor: uangElektronikView.leadingAnchor, topAnchor: iconGopayImage.bottomAnchor, leadingConstant: 12, topConstant: 15, corner: 0, heightAnchor: 16)
        iconLinAjaImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconLinAjaImage.image = UIImage(named :"linkaja")
        iconLinAjaImage.contentMode = .scaleAspectFit
        
        uangElektronikView.addSubview(linkAjaLabel)
        UIHelper.makeLabel(label: linkAjaLabel, corner: 0, allignment: .left, leadingAnchor: iconLinAjaImage.trailingAnchor, trailingAnchor: uangElektronikView.trailingAnchor, topAnchor: gopayLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: linkAjaLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Link Aja", kerning: 0.6)
        
        uangElektronikView.addSubview(rigthButtonLinkAja)
        UIHelper.makeSmallButton(smallButton: rigthButtonLinkAja, leadingAnchor: uangElektronikView.trailingAnchor, topAnchor: gopayLabel.bottomAnchor, leadingConstant: -30, topConstant: 20, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rigthButtonLinkAja.setImage(UIImage(named: "next"), for: .normal )
        
    }
    
    func setupNavBarPembayaran(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "PRODUK", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}
