//
//  DetailBayarVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailBayarViewController{
    
    func setupUI(){
        let height = view.frame.size.height
        view.addSubview(transaksiView)
        UIHelper.makeView(view: transaksiView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 20, corner: 10, heightAnchor: 120, widthAnchor: 0)
        transaksiView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        transaksiView.layer.borderWidth = 0.5
        
        transaksiView.addSubview(headerNomorTransaksiLabel)
        UIHelper.makeLabel(label: headerNomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: transaksiView.topAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        headerNomorTransaksiLabel.text = "Nomor Transaksi"
        
        transaksiView.addSubview(nomorTransaksiLabel)
        UIHelper.makeLabel(label: nomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: headerNomorTransaksiLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 3, heightAnchor: 16, widthAnchor: 0)
        nomorTransaksiLabel.text = "1234-5678-9101"
        nomorTransaksiLabel.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        
        transaksiView.addSubview(headerNomorPengajuanLabel)
        UIHelper.makeLabel(label: headerNomorPengajuanLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: nomorTransaksiLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        headerNomorPengajuanLabel.text = "Nomor Pengajuan"
        
        transaksiView.addSubview(nomorPengajuanLabel)
        UIHelper.makeLabel(label: nomorPengajuanLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: headerNomorPengajuanLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 3, heightAnchor: 16, widthAnchor: 0)
        nomorPengajuanLabel.text = "1234-5678-9101"
        nomorPengajuanLabel.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        view.addSubview(segeraLakukanPembayaranLabel)
        UIHelper.makeLabel(label: segeraLakukanPembayaranLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: transaksiView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        segeraLakukanPembayaranLabel.text = "Segera lakukan pembayaran sebelum:"
        
        view.addSubview(tanggalWaktuPembayarannLabel)
        UIHelper.makeLabel(label: tanggalWaktuPembayarannLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: segeraLakukanPembayaranLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, heightAnchor: 17, widthAnchor: 0)
        tanggalWaktuPembayarannLabel.text = "Jumat, 6 Maret 2020, 17.00"
        
        view.addSubview(virtualAccountView)
        UIHelper.makeView(view: virtualAccountView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: tanggalWaktuPembayarannLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 21, corner: 10, heightAnchor: 94, widthAnchor: 0)
        virtualAccountView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        virtualAccountView.layer.borderWidth = 0.5
        
        virtualAccountView.addSubview(tranferkeNomorLabel)
        UIHelper.makeLabel(label: tranferkeNomorLabel, corner: 0, allignment: .left, leadingAnchor: virtualAccountView.leadingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: 15, trailingConstant: -15, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        tranferkeNomorLabel.text = "Transfer ke nomor virtual account :"
        
        virtualAccountView.addSubview(iconMetodeBayarImage)
        UIHelper.makeImageView(imageView: iconMetodeBayarImage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: tranferkeNomorLabel.bottomAnchor, leadingConstant: 17, topConstant: 15, corner: 0, heightAnchor: 16)
        iconMetodeBayarImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconMetodeBayarImage.backgroundColor = .gray
        virtualAccountView.addSubview(nomorVirtualAccountLabel)
        UIHelper.makeLabel(label: nomorVirtualAccountLabel, corner: 0, allignment: .right, leadingAnchor: iconMetodeBayarImage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: tranferkeNomorLabel.bottomAnchor, leadingConstant: 16, trailingConstant: -16, topConstant: 16, heightAnchor: 15, widthAnchor: 0)
        nomorVirtualAccountLabel.text = "008-2345-567-1087"
        
        virtualAccountView.addSubview(salinNomorRekening)
        UIHelper.makeLabel(label: salinNomorRekening, corner: 0, allignment: .right, leadingAnchor: virtualAccountView.leadingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: nomorVirtualAccountLabel.bottomAnchor, leadingConstant: 16, trailingConstant: -16, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        salinNomorRekening.text = "Salin nomor rekening"
        
        view.addSubview(panduanPembayranLabel)
        UIHelper.makeLabel(label: panduanPembayranLabel, corner: 0, allignment: .left, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: virtualAccountView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        panduanPembayranLabel.text = "Panduan pembayaran"
        view.addSubview(internetBankingView)
        UIHelper.makeView(view: internetBankingView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: panduanPembayranLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 8, corner: 10, heightAnchor: 36, widthAnchor: 0)
        internetBankingView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        internetBankingView.layer.borderWidth = 0.5
        
        internetBankingView.addSubview(internetBankingLabel)
        UIHelper.makeLabel(label: internetBankingLabel, corner: 10, allignment: .left, leadingAnchor: internetBankingView.leadingAnchor, trailingAnchor: internetBankingView.trailingAnchor, topAnchor: internetBankingView.topAnchor, leadingConstant: 0, trailingConstant: -50, topConstant: 0, heightAnchor: 36, widthAnchor: 0)
        internetBankingLabel.text =  "   Internet Banking"
        
        internetBankingView.addSubview(rightButtonInternet)
        UIHelper.makeSmallButton(smallButton: rightButtonInternet, leadingAnchor: internetBankingLabel.trailingAnchor, topAnchor: internetBankingView.topAnchor, leadingConstant: 20, topConstant: -12, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 1, colorBorder: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
        
        view.addSubview(mobileBankingView)
        UIHelper.makeView(view: mobileBankingView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: internetBankingView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 5, corner: 10, heightAnchor: 36, widthAnchor: 0)
        mobileBankingView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        mobileBankingView.layer.borderWidth = 0.5

        mobileBankingView.addSubview(mobileBankingLabel)
        UIHelper.makeLabel(label: mobileBankingLabel, corner: 10, allignment: .left, leadingAnchor: mobileBankingView.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: mobileBankingView.safeAreaLayoutGuide.trailingAnchor, topAnchor: mobileBankingView.topAnchor, leadingConstant: 0, trailingConstant: -50, topConstant: 0, heightAnchor: 36, widthAnchor: 0)
        mobileBankingLabel.text = "   Mobile Banking"
        
        
        mobileBankingView.addSubview(rightButtonMobile)
        rightButtonMobile.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
           rightButtonMobile.trailingAnchor.constraint(equalTo: mobileBankingView.trailingAnchor, constant: -24),
           rightButtonMobile.topAnchor.constraint(equalTo: mobileBankingView.topAnchor, constant: -12),
           rightButtonMobile.heightAnchor.constraint(equalToConstant:11),
           rightButtonMobile.widthAnchor.constraint(equalToConstant: 6)
       ])
       rightButtonMobile.backgroundColor = .red
       rightButtonMobile.layoutIfNeeded()
        
        view.addSubview(lihatTransaksiButton)
        UIHelper.makeButton(button: lihatTransaksiButton, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: height*0.8, corner: 24, heightAnchor: 48, widthAnchor: 0)
        lihatTransaksiButton.setTitle("LIHAT TRANSAKSI", for: .normal)
        lihatTransaksiButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
    }
}
