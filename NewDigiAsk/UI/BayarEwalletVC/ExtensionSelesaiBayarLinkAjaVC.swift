//
//  ExtensionSelesaiBayarLinkAjaVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension SelesaiBayarEwalletViewController{
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
        checkOutImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        checkOutImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        checkOutImage.layer.masksToBounds = true
        checkOutImage.layer.cornerRadius = 17
        checkOutImage.image = UIImage(named: "rpIcon")
        checkOutImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(completeImage)
        completeImage.translatesAutoresizingMaskIntoConstraints = false
        completeImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        completeImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        completeImage.layer.masksToBounds = true
        completeImage.layer.cornerRadius = 17
        completeImage.image = UIImage(named: "checkfinishWhite")
        completeImage.contentMode = .center
        
        produkBaseView.addSubview(selesaiBayarBaseView)
        UIHelper.makeView(view: selesaiBayarBaseView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height-60, widthAnchor: 0)
        selesaiBayarBaseView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        selesaiBayarBaseView.addSubview(terimakasihLabel)
        UIHelper.makeLabel(label: terimakasihLabel, corner: 0, allignment: .center , leadingAnchor: selesaiBayarBaseView.leadingAnchor, trailingAnchor: selesaiBayarBaseView.trailingAnchor, topAnchor: selesaiBayarBaseView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 30, heightAnchor: 40, widthAnchor: 0)
        terimakasihLabel.numberOfLines = 2
        
        UIHelper.setTextLabel(label: terimakasihLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Terimakasih untuk pembayaran Anda", kerning: 0.5)
        
        selesaiBayarBaseView.addSubview(transaksiView)
        UIHelper.makeView(view: transaksiView, leadingAnchor: selesaiBayarBaseView.leadingAnchor, trailingAnchor: selesaiBayarBaseView.trailingAnchor, topAnchor: terimakasihLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, corner: 10, heightAnchor: 118, widthAnchor: 0)
        transaksiView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        transaksiView.layer.borderWidth = 1
        
        transaksiView.addSubview(nomorTransaksiHeaderLabel)
        UIHelper.makeLabel(label: nomorTransaksiHeaderLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: transaksiView.topAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTransaksiHeaderLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Transaksi", kerning: 0.2)
        
        transaksiView.addSubview(nomorTransaksiLabel)
        UIHelper.makeLabel(label: nomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: nomorTransaksiHeaderLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTransaksiLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.5)
        
        transaksiView.addSubview(nomorPengajuanHeaderLabel)
        UIHelper.makeLabel(label: nomorPengajuanHeaderLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: nomorTransaksiLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPengajuanHeaderLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor:#colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Pengajuan", kerning: 0.2)
        
        transaksiView.addSubview(nomorPengajuanLabel)
        UIHelper.makeLabel(label: nomorPengajuanLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: nomorPengajuanHeaderLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPengajuanLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor:#colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "ASK-2345-567-10879", kerning: 0.2)
        
        selesaiBayarBaseView.addSubview(andaMelakukanLabel)
        UIHelper.makeLabel(label: andaMelakukanLabel, corner: 0, allignment: .left, leadingAnchor: selesaiBayarBaseView.leadingAnchor, trailingAnchor: selesaiBayarBaseView.trailingAnchor, topAnchor: transaksiView.bottomAnchor , leadingConstant: 22, trailingConstant: -22, topConstant: 30, heightAnchor: 32, widthAnchor: 0)
        UIHelper.setTextLabel(label: andaMelakukanLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 0.87), weight: .regular, fontSize: 12, text: "Anda melakukan pembayaran LinkAja senilai :", kerning: 0.6)
        andaMelakukanLabel.numberOfLines = 0
        
        selesaiBayarBaseView.addSubview(linkAjaIconImage)
        UIHelper.makeImageView(imageView: linkAjaIconImage, leadingAnchor: selesaiBayarBaseView.leadingAnchor, topAnchor: andaMelakukanLabel.bottomAnchor, leadingConstant: 22, topConstant: 5, corner: 0, heightAnchor: 40)
        linkAjaIconImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        linkAjaIconImage.contentMode = .scaleAspectFit
        linkAjaIconImage.image = UIImage(named: "linkaja")
        
        selesaiBayarBaseView.addSubview(nominalLabel)
        UIHelper.makeLabel(label: nominalLabel, corner: 0, allignment: .left, leadingAnchor: linkAjaIconImage.trailingAnchor, trailingAnchor: selesaiBayarBaseView.trailingAnchor, topAnchor: andaMelakukanLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -22, topConstant: 10, heightAnchor: 15, widthAnchor: 0)
        UIHelper.setTextLabel(label: nominalLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 30.000.000,-", kerning: 0.3)
        
        
        selesaiBayarBaseView.addSubview(lihatTransaksiButton)
        UIHelper.makeButton(button: lihatTransaksiButton, leadingAnchor: selesaiBayarBaseView.leadingAnchor, trailingAnchor: selesaiBayarBaseView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.bottomAnchor , leadingConstant: 24, trailingConstant: -24, topConstant: -48, corner: 24, heightAnchor: 48, widthAnchor: 0)
        lihatTransaksiButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        lihatTransaksiButton.setTitle("LIHAT TRANSAKSI", for: .normal)
    }
    
    func setupNavBarSelesailBayarLinkAja(){
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
