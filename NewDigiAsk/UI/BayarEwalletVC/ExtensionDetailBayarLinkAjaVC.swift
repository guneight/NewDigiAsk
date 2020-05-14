//
//  ExtensionDetailBayarLinkAjaVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailBayarLinkAjaViewController{
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
        
        produkBaseView.addSubview(detailBayarBaseView)
        UIHelper.makeView(view: detailBayarBaseView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height-60, widthAnchor: 0)
        detailBayarBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        detailBayarBaseView.addSubview(masukLabel)
        UIHelper.makeLabel(label: masukLabel, corner: 0, allignment: .left, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: detailBayarBaseView.topAnchor, leadingConstant: 24, trailingConstant: -26, topConstant: 25, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: masukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "MASUK", kerning: 0.2)
        
        detailBayarBaseView.addSubview(linkAjaIconImage)
        UIHelper.makeImageView(imageView: linkAjaIconImage, leadingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: detailBayarBaseView.topAnchor, leadingConstant: -75, topConstant: 25, corner: 0, heightAnchor: 50)
        linkAjaIconImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        linkAjaIconImage.image = UIImage(named: "linkaja")
        
        detailBayarBaseView.addSubview(nomorLinkAjaTextField)
        UIHelper.makeTetxField(textField: nomorLinkAjaTextField, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: linkAjaIconImage.bottomAnchor, leadingConstant: 26, trailingConstant: -24, topConstant: 22, corner: 0, heightAnchor: 25, textColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1))
        UIHelper.setTextField(textField: nomorLinkAjaTextField, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 16, text: " ", kerning: 0.6)
        nomorLinkAjaTextField.placeholder = "Nomor Link Aja"
        
        detailBayarBaseView.addSubview(pinTextField)
               UIHelper.makeTetxField(textField: pinTextField, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: nomorLinkAjaTextField.bottomAnchor, leadingConstant: 26, trailingConstant: -24, topConstant: 22, corner: 0, heightAnchor: 25, textColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1))
               UIHelper.setTextField(textField: pinTextField, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 16, text: " ", kerning: 0.6)
        pinTextField.placeholder = "Masukkan PIN LinkAja"
        
        detailBayarBaseView.addSubview(sisaWaktuLabel)
        UIHelper.makeLabel(label: sisaWaktuLabel, corner: 0, allignment: .left, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: pinTextField.bottomAnchor, leadingConstant: 26, trailingConstant: -24, topConstant: 40, heightAnchor: 15, widthAnchor: 0)
        UIHelper.setTextLabel(label: sisaWaktuLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.0431372549, green: 0.0431372549, blue: 0.0431372549, alpha: 1), weight: .regular, fontSize: 12, text: "Sisa waktu : 03 :00", kerning: 0.6)
        
        detailBayarBaseView.addSubview(digiaskLogoImage)
        UIHelper.makeImageView(imageView: digiaskLogoImage, leadingAnchor: detailBayarBaseView.leadingAnchor, topAnchor: sisaWaktuLabel.bottomAnchor, leadingConstant: 26, topConstant: 10, corner: 0, heightAnchor: 40)
        digiaskLogoImage.widthAnchor.constraint(equalToConstant: 112).isActive = true
        digiaskLogoImage.image = UIImage(named: "logoDigiAskBlue")
        digiaskLogoImage.contentMode = .scaleAspectFit
        
        detailBayarBaseView.addSubview(totalView)
        UIHelper.makeView(view: totalView, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: digiaskLogoImage.bottomAnchor, leadingConstant: 26, trailingConstant: -24, topConstant: 10, corner: 3, heightAnchor: 37, widthAnchor: 0)
        totalView.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.2431372549, blue: 0.2431372549, alpha: 1)
        
        totalView.addSubview(totalLabel)
        UIHelper.makeLabel(label: totalLabel, corner: 0, allignment: .left, leadingAnchor: totalView.leadingAnchor, trailingAnchor: totalView.trailingAnchor, topAnchor: totalView.topAnchor, leadingConstant: 17, trailingConstant: -(totalView.frame.size.width/2), topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "TOTAL", kerning: 0.2)
        
        totalView.addSubview(nilaiTotalLabel)
        UIHelper.makeLabel(label: nilaiTotalLabel, corner: 0, allignment: .right, leadingAnchor: totalLabel.trailingAnchor, trailingAnchor: totalView.trailingAnchor, topAnchor: totalView.topAnchor, leadingConstant: 5, trailingConstant: -15, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiTotalLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "Rp 30.000.000,-", kerning: 0.2)
        
        detailBayarBaseView.addSubview(lihatTransaksiLabel)
        UIHelper.makeLabel(label: lihatTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: totalView.bottomAnchor, leadingConstant: 26, trailingConstant: -10, topConstant: 11, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: lihatTransaksiLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.0431372549, green: 0.0431372549, blue: 0.0431372549, alpha: 1), weight: .bold, fontSize: 12, text: "LIHAT DETIL TRANSAKSI", kerning: 0.2)
        
        detailBayarBaseView.addSubview(bayarButton)
        UIHelper.makeButton(button: bayarButton, leadingAnchor: detailBayarBaseView.leadingAnchor, trailingAnchor: detailBayarBaseView.trailingAnchor, topAnchor: lihatTransaksiLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -26, topConstant: 30, corner: 26, heightAnchor: 48, widthAnchor: 0)
        bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        bayarButton.setTitle("BAYAR", for: .normal)
        
        
    }
    
    func setupNavBarDetailBayarLinkAja(){
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
