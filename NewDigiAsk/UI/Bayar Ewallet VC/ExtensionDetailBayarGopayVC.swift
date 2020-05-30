//
//  ExtensionDetailBayarGopayVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 14/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailBayarGopayViewController {
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
        
        produkBaseView.addSubview(gopayBaseView)
        UIHelper.makeView(view: gopayBaseView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height-60, widthAnchor: 0)
        gopayBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        gopayBaseView.addSubview(totalPembayaranView)
        UIHelper.makeView(view: totalPembayaranView, leadingAnchor: gopayBaseView.leadingAnchor, trailingAnchor: gopayBaseView.trailingAnchor, topAnchor: gopayBaseView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, corner: 10, heightAnchor: 71, widthAnchor: 0)
        totalPembayaranView.layer.borderWidth = 1
        totalPembayaranView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        totalPembayaranView.addSubview(totalPembayaranLabel)
        UIHelper.makeLabel(label: totalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalPembayaranLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Total Pembayaran", kerning: 0.5)
        
        totalPembayaranView.addSubview(nilaiTotalPembayaranLabel)
        UIHelper.makeLabel(label: nilaiTotalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiTotalPembayaranLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 30.000.000,-", kerning: 0.5)
        
        gopayBaseView.addSubview(detailPenerimaView)
        UIHelper.makeView(view: detailPenerimaView, leadingAnchor: gopayBaseView.leadingAnchor, trailingAnchor: gopayBaseView.trailingAnchor, topAnchor: totalPembayaranView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 8, corner: 10, heightAnchor: 150, widthAnchor: 0)
        detailPenerimaView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        detailPenerimaView.layer.borderWidth = 1
        detailPenerimaView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        detailPenerimaView.addSubview(detailPenerimaLabel)
        UIHelper.makeLabel(label: detailPenerimaLabel, corner: 0, allignment: .left, leadingAnchor: detailPenerimaView.leadingAnchor, trailingAnchor: detailPenerimaView.trailingAnchor, topAnchor: detailPenerimaView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 17, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: detailPenerimaLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Detil Penerima", kerning: 0.2)
        
        detailPenerimaView.addSubview(logoDigiAskImage)
        UIHelper.makeImageView(imageView: logoDigiAskImage, leadingAnchor: detailPenerimaView.leadingAnchor, topAnchor: detailPenerimaLabel.bottomAnchor, leadingConstant: 20, topConstant: 30, corner: 0, heightAnchor: 40)
        logoDigiAskImage.widthAnchor.constraint(equalToConstant: 112).isActive  = true
        logoDigiAskImage.image = UIImage(named: "logoDigiAskBlue")
        logoDigiAskImage.contentMode = .scaleAspectFit
        
        detailPenerimaView.addSubview(termConditionIcon)
        UIHelper.makeImageView(imageView: termConditionIcon, leadingAnchor: detailPenerimaView.leadingAnchor, topAnchor: logoDigiAskImage.bottomAnchor, leadingConstant: 20, topConstant: 11, corner: 0, heightAnchor: 14)
        termConditionIcon.widthAnchor.constraint(equalToConstant: 14).isActive = true
        termConditionIcon.image = UIImage(named: "termIcon")
        termConditionIcon.contentMode = .scaleAspectFit
        
        detailPenerimaView.addSubview(termConditionLabel)
        UIHelper.makeLabel(label: termConditionLabel, corner: 0, allignment: .left, leadingAnchor: termConditionIcon.trailingAnchor, trailingAnchor: detailPenerimaView.trailingAnchor, topAnchor: logoDigiAskImage.bottomAnchor, leadingConstant: 6, trailingConstant: -13, topConstant: 11, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: termConditionLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 7, text: "Dengan melakukan pembayaran ini berarti anda telah menyetujui slarat slarat yang berlaku. lihat Term n Condition disini", kerning: 0.2)
        termConditionLabel.numberOfLines = 0
        
        gopayBaseView.addSubview(gopayView)
        UIHelper.makeView(view: gopayView, leadingAnchor: gopayBaseView.leadingAnchor, trailingAnchor: gopayBaseView.trailingAnchor, topAnchor: detailPenerimaView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 10, heightAnchor: 150, widthAnchor: 0)
        gopayView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        gopayView.layer.borderWidth = 1
        gopayView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        gopayView.addSubview(gopayLogoImage)
        UIHelper.makeImageView(imageView: gopayLogoImage, leadingAnchor: gopayView.leadingAnchor, topAnchor: gopayView.topAnchor, leadingConstant: 20, topConstant: 9, corner: 0, heightAnchor: 32)
        gopayLogoImage.widthAnchor.constraint(equalToConstant: 103).isActive = true
        gopayLogoImage.image = UIImage(named: "gopay")
        gopayLogoImage.contentMode = .scaleAspectFit
        
        gopayView.addSubview(gopayLabel)
        UIHelper.makeLabel(label: gopayLabel, corner: 0, allignment: .right, leadingAnchor: logoDigiAskImage.trailingAnchor, trailingAnchor: gopayView.trailingAnchor, topAnchor: gopayView.topAnchor, leadingConstant: 50, trailingConstant: -20, topConstant: 9, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: gopayLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Gopay", kerning: 0.6)
        
        gopayView.addSubview(payLaterLabel)
        UIHelper.makeLabel(label: payLaterLabel, corner: 5, allignment: .left, leadingAnchor: gopayView.leadingAnchor, trailingAnchor: gopayView.trailingAnchor, topAnchor: gopayLogoImage.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, heightAnchor: 26, widthAnchor: 0)
        UIHelper.setTextLabel(label: payLaterLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .regular, fontSize: 9, text: "   Use PayLater and pay by the end of the mont", kerning: 0.2)
        payLaterLabel.backgroundColor = #colorLiteral(red: 0.1254901961, green: 0.431372549, blue: 0.7725490196, alpha: 1)
        
        gopayView.addSubview(useLabel)
        UIHelper.makeLabel(label: useLabel, corner: 5, allignment: .left, leadingAnchor: gopayView.trailingAnchor, trailingAnchor: gopayView.trailingAnchor, topAnchor: gopayLogoImage.bottomAnchor, leadingConstant: -70, trailingConstant: -20, topConstant: 5, heightAnchor: 26, widthAnchor: 0)
        UIHelper.setTextLabel(label: useLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .regular, fontSize: 12, text: "  USE", kerning: 0.4)
        useLabel.backgroundColor = #colorLiteral(red: 0.168627451, green: 0.5333333333, blue: 0.937254902, alpha: 1)
        
        gopayView.addSubview(payNowView)
        UIHelper.makeView(view: payNowView, leadingAnchor: gopayView.leadingAnchor, trailingAnchor: gopayView.trailingAnchor, topAnchor: payLaterLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 5, heightAnchor: 37, widthAnchor: 0)
        payNowView.backgroundColor = #colorLiteral(red: 0.1960784314, green: 0.6901960784, blue: 0.3411764706, alpha: 1)
        payNowView.isUserInteractionEnabled = true

        payNowView.addSubview(payNowLabel)
        UIHelper.makeSmalllabel(smallLabel: payNowLabel, leadingAnchor: payNowView.leadingAnchor, topAnchor: payNowView.topAnchor, leadingConstant: 17, topConstant: 11, corner: 0, heightAnchor: 14, widthtAnchor: 100)
        UIHelper.setTextLabel(label: payNowLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "PAY NOW", kerning: 0.2)

        payNowView.addSubview(nominalLabel)
        UIHelper.makeLabel(label: nominalLabel, corner: 0, allignment: .right, leadingAnchor: payNowLabel.trailingAnchor, trailingAnchor: payNowView.trailingAnchor, topAnchor: payNowView.topAnchor, leadingConstant: 5, trailingConstant: -17, topConstant: 11, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nominalLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "Rp 30.000.000,-", kerning: 0.2)
        
    }
    
    func setupNavBarDetailBayarGopay(){
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
