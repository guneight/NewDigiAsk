//
//  ExtensionDetailPolisVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 19/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailPolisViewController{
    
    func setupUIDetailPolis(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(detailPolisScrolView)
        UIHelper.makeScroolView(scrollView: detailPolisScrolView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, widthAnchor: 0, scrollAble: true, scrollShow: false)
        detailPolisScrolView.layer.borderColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        detailPolisScrolView.addSubview(detailPolisView)
        detailPolisView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailPolisView.leadingAnchor.constraint(equalTo: detailPolisScrolView.leadingAnchor),
            detailPolisView.trailingAnchor.constraint(equalTo: detailPolisScrolView.trailingAnchor),
            detailPolisView.topAnchor.constraint(equalTo: detailPolisScrolView.topAnchor),
            detailPolisView.bottomAnchor.constraint(equalTo: detailPolisScrolView.bottomAnchor),
            detailPolisView.widthAnchor.constraint(equalTo: detailPolisScrolView.widthAnchor),
            detailPolisView.heightAnchor.constraint(equalToConstant: 1000)
        ])
        let heightConstraint = detailPolisView.heightAnchor.constraint(equalTo: detailPolisScrolView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        detailPolisView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        detailPolisView.layer.masksToBounds = true
        detailPolisView.layer.cornerRadius = 20
        
        detailPolisView.addSubview(dataPolisView)
        UIHelper.makeView(view: dataPolisView, leadingAnchor: detailPolisView.leadingAnchor, trailingAnchor: detailPolisView.trailingAnchor, topAnchor: detailPolisView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 24, corner: 10, heightAnchor: 146, widthAnchor: 0)
        dataPolisView.backgroundColor = .white
        dataPolisView.layer.borderWidth = 1
        dataPolisView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        dataPolisView.addSubview(headerNomorPolisLabel)
        UIHelper.makeLabel(label: headerNomorPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: dataPolisView.topAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNomorPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Polis", kerning: 0.12)
        
        dataPolisView.addSubview(nomorPolisLabel)
        UIHelper.makeLabel(label: nomorPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerNomorPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.12)
        
        dataPolisView.addSubview(underlineNomorPolis)
        UIHelper.makeView(view: underlineNomorPolis, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: nomorPolisLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineNomorPolis.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        dataPolisView.addSubview(headerStatusPolisLabel)
        UIHelper.makeLabel(label: headerStatusPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: underlineNomorPolis.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerStatusPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Status polis", kerning: 0.12)
        
        dataPolisView.addSubview(statusPolisLabel)
        UIHelper.makeLabel(label: statusPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerStatusPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: statusPolisLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Expired", kerning: 0.12)
        
        dataPolisView.addSubview(underlineStatusPolis)
        UIHelper.makeView(view: underlineStatusPolis, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: statusPolisLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineStatusPolis.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        dataPolisView.addSubview(headerMasaBerlakuLabel)
        UIHelper.makeLabel(label: headerMasaBerlakuLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: underlineStatusPolis.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerMasaBerlakuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Masa berlaku", kerning: 0.12)
        
        dataPolisView.addSubview(masaBerlakuLabel)
        UIHelper.makeLabel(label: masaBerlakuLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerMasaBerlakuLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: masaBerlakuLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Jumat, 1 nov 2019, 00.00 wib", kerning: 0.12)
        
        detailPolisView.addSubview(produkView)
        UIHelper.makeView(view: produkView, leadingAnchor: detailPolisView.leadingAnchor, trailingAnchor: detailPolisView.trailingAnchor, topAnchor: dataPolisView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 14, corner: 10, heightAnchor: 117, widthAnchor: 0)
        produkView.backgroundColor = .white
        produkView.layer.borderWidth = 1
        produkView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        produkView.addSubview(namaProdukAsuransiLabel)
        UIHelper.makeLabel(label: namaProdukAsuransiLabel, corner: 0, allignment: .left, leadingAnchor: produkView.leadingAnchor, trailingAnchor: produkView.trailingAnchor, topAnchor: produkView.topAnchor, leadingConstant: 15, trailingConstant: -35, topConstant: 10, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaProdukAsuransiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.12)
        
        produkView.addSubview(rightButton)
        UIHelper.makeSmallButton(smallButton: rightButton, leadingAnchor: produkView.trailingAnchor, topAnchor: produkView.topAnchor, leadingConstant: -25, topConstant: 12, corner: 0, heightAnchor: 10, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        rightButton.setImage(UIImage(named: "next"), for: .normal)
        
        produkView.addSubview(underlineNamaProduk)
        UIHelper.makeView(view: underlineNamaProduk, leadingAnchor: produkView.leadingAnchor, trailingAnchor: produkView.trailingAnchor, topAnchor: namaProdukAsuransiLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineNamaProduk.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        produkView.addSubview(iconProdukImage)
        UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: produkView.leadingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 15, topConstant: 10, corner: 10, heightAnchor: 57)
        iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
        iconProdukImage.image = UIImage(named: "Kebakaran")
        
        produkView.addSubview(deskripsiProdukLabel)
        UIHelper.makeLabel(label: deskripsiProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: produkView.trailingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 11, heightAnchor: 40, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiProdukLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.65), weight: .regular, fontSize: 12, text:"Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam" , kerning: 0.06)
        deskripsiProdukLabel.numberOfLines = 0
        
        produkView.addSubview(hargaProdukLabel)
        UIHelper.makeLabel(label: hargaProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: produkView.trailingAnchor, topAnchor: deskripsiProdukLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 3, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: hargaProdukLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 250.000,-", kerning: 0.12)
        
        detailPolisView.addSubview(statusPembayaranView)
        UIHelper.makeView(view: statusPembayaranView, leadingAnchor: detailPolisView.leadingAnchor, trailingAnchor: detailPolisView.trailingAnchor, topAnchor: produkView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 14, corner: 10, heightAnchor: 200, widthAnchor: 0)
        statusPembayaranView.layer.borderWidth = 1
        statusPembayaranView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        statusPembayaranView.backgroundColor = .white
        
        statusPembayaranView.addSubview(statusPembayaranLabel)
        UIHelper.makeLabel(label: statusPembayaranLabel, corner: 0, allignment: .center, leadingAnchor: statusPembayaranView.leadingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: statusPembayaranView.topAnchor, leadingConstant: 70, trailingConstant: -70, topConstant: 13, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: statusPembayaranLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "STATUS PEMBAYARAN", kerning: 0.4)
        
        statusPembayaranView.addSubview(underlineStatusPembayaran)
        UIHelper.makeView(view: underlineStatusPembayaran, leadingAnchor: statusPembayaranView.leadingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: statusPembayaranLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 11, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineStatusPembayaran.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        statusPembayaranView.addSubview(headerNomortransaksiLabel)
        UIHelper.makeSmalllabel(smallLabel: headerNomortransaksiLabel, leadingAnchor: statusPembayaranView.leadingAnchor, topAnchor: underlineStatusPembayaran.bottomAnchor, leadingConstant: 17, topConstant: 11, corner: 0, heightAnchor: 16, widthtAnchor: 153)
        UIHelper.setTextLabel(label: headerNomortransaksiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Transaksi", kerning: 0.12)
        
        statusPembayaranView.addSubview(headerNomorPengajuan)
        UIHelper.makeSmalllabel(smallLabel: headerNomorPengajuan, leadingAnchor: statusPembayaranView.leadingAnchor, topAnchor: headerNomortransaksiLabel.bottomAnchor, leadingConstant: 17, topConstant: 11, corner: 0, heightAnchor: 16, widthtAnchor: 153)
        UIHelper.setTextLabel(label: headerNomorPengajuan, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Pengajuan", kerning: 0.12)
        
        statusPembayaranView.addSubview(headerTanggalPembayarLabel)
        UIHelper.makeSmalllabel(smallLabel: headerTanggalPembayarLabel, leadingAnchor: statusPembayaranView.leadingAnchor, topAnchor: headerNomorPengajuan.bottomAnchor, leadingConstant: 17, topConstant: 11, corner: 0, heightAnchor: 16, widthtAnchor: 153)
        UIHelper.setTextLabel(label: headerTanggalPembayarLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Tanggal Transaksi", kerning: 0.12)
        
        statusPembayaranView.addSubview(headerStatusPembayaran)
        UIHelper.makeSmalllabel(smallLabel: headerStatusPembayaran, leadingAnchor: statusPembayaranView.leadingAnchor, topAnchor: headerTanggalPembayarLabel.bottomAnchor, leadingConstant: 17, topConstant: 11, corner: 0, heightAnchor: 16, widthtAnchor: 153)
        UIHelper.setTextLabel(label: headerStatusPembayaran, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Status Pembayaran", kerning: 0.12)
        
        statusPembayaranView.addSubview(headerMetodelabel)
        UIHelper.makeSmalllabel(smallLabel: headerMetodelabel, leadingAnchor: statusPembayaranView.leadingAnchor, topAnchor: headerStatusPembayaran.bottomAnchor, leadingConstant: 17, topConstant: 11, corner: 0, heightAnchor: 16, widthtAnchor: 153)
        UIHelper.setTextLabel(label: headerMetodelabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Metode", kerning: 0.12)
        
        statusPembayaranView.addSubview(nomorTransaksiLabel)
        UIHelper.makeLabel(label: nomorTransaksiLabel, corner: 0, allignment: .right, leadingAnchor: headerNomortransaksiLabel.trailingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: underlineStatusPembayaran.bottomAnchor, leadingConstant: 5, trailingConstant: -17, topConstant: 11, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTransaksiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.01960784314, green: 0.01960784314, blue: 0.01960784314, alpha: 1), weight: .bold, fontSize: 11, text: "123-2345-567-10879", kerning: 0.55)
        
        statusPembayaranView.addSubview(nomorPengajuanLabel)
        UIHelper.makeLabel(label: nomorPengajuanLabel, corner: 0, allignment: .right, leadingAnchor: headerNomorPengajuan.trailingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: nomorTransaksiLabel.bottomAnchor, leadingConstant: 5, trailingConstant: -17, topConstant: 11, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPengajuanLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.01960784314, green: 0.01960784314, blue: 0.01960784314, alpha: 1), weight: .bold, fontSize: 11, text: "ASK-2345-567-10879", kerning: 0.55)
        
        statusPembayaranView.addSubview(tanggalPembayaranLabel)
        UIHelper.makeLabel(label: tanggalPembayaranLabel, corner: 0, allignment: .right, leadingAnchor: headerTanggalPembayarLabel.trailingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: nomorPengajuanLabel.bottomAnchor, leadingConstant: 5, trailingConstant: -17, topConstant: 11, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalPembayaranLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.01960784314, green: 0.01960784314, blue: 0.01960784314, alpha: 1), weight: .bold, fontSize: 11, text: "26 Januari 2020", kerning: 0.55)
        
        statusPembayaranView.addSubview(statusbayarLabel)
        UIHelper.makeLabel(label: statusbayarLabel, corner: 0, allignment: .right, leadingAnchor: headerStatusPembayaran.trailingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: tanggalPembayaranLabel.bottomAnchor, leadingConstant: 5, trailingConstant: -17, topConstant: 11, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: statusbayarLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.01960784314, green: 0.01960784314, blue: 0.01960784314, alpha: 1), weight: .bold, fontSize: 11, text: "Berhasil", kerning: 0.55)
        
        statusPembayaranView.addSubview(metodeLabel)
        UIHelper.makeLabel(label: metodeLabel, corner: 0, allignment: .right, leadingAnchor: headerMetodelabel.trailingAnchor, trailingAnchor: statusPembayaranView.trailingAnchor, topAnchor: statusbayarLabel.bottomAnchor, leadingConstant: 5, trailingConstant: -17, topConstant: 11, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: metodeLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.01960784314, green: 0.01960784314, blue: 0.01960784314, alpha: 1), weight: .bold, fontSize: 11, text: "BCA Virtual Account", kerning: 0.55)
        
        detailPolisView.addSubview(beliLagiButton)
        UIHelper.makeButton(button: beliLagiButton, leadingAnchor: detailPolisView.leadingAnchor, trailingAnchor: detailPolisView.trailingAnchor, topAnchor: statusPembayaranView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 15, corner: 24, heightAnchor: 48, widthAnchor: 0)
        beliLagiButton.setTitle("BELI LAGI", for: .normal)
        beliLagiButton.backgroundColor  = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
    }
    
    func setupNavBarDeatailPolis(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "GALERY", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
