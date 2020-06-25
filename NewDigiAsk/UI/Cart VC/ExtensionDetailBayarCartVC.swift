//
//  ExtensionDetailBayarVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailBayarCartViewController {
    
        func setupUI(){
            let height = view.frame.size.height
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
            
            produkBaseView.addSubview(detailBayarView)
            UIHelper.makeView(view: detailBayarView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: 0, widthAnchor: 0)
            detailBayarView.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor).isActive = true
            detailBayarView.backgroundColor = .white
            
            detailBayarView.addSubview(transaksiView)
            UIHelper.makeView(view: transaksiView, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: detailBayarView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 20, corner: 10, heightAnchor: 120, widthAnchor: 0)
            transaksiView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            transaksiView.layer.borderWidth = 0.5
            
            transaksiView.addSubview(headerNomorTransaksiLabel)
            UIHelper.makeLabel(label: headerNomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: transaksiView.topAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: headerNomorTransaksiLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Transaksi", kerning: 0.12)
            
            transaksiView.addSubview(nomorTransaksiLabel)
            UIHelper.makeLabel(label: nomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: headerNomorTransaksiLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 3, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: nomorTransaksiLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.12)
            
            
            transaksiView.addSubview(headerNomorPengajuanLabel)
            UIHelper.makeLabel(label: headerNomorPengajuanLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: nomorTransaksiLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: headerNomorPengajuanLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Pengajuan", kerning: 0.12)
            
            transaksiView.addSubview(nomorPengajuanLabel)
            UIHelper.makeLabel(label: nomorPengajuanLabel, corner: 0, allignment: .left, leadingAnchor: transaksiView.leadingAnchor, trailingAnchor: transaksiView.trailingAnchor, topAnchor: headerNomorPengajuanLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 3, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: nomorPengajuanLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "ASK-2345-567-10879", kerning: 0.12)
            
            detailBayarView.addSubview(segeraLakukanPembayaranLabel)
            UIHelper.makeLabel(label: segeraLakukanPembayaranLabel, corner: 0, allignment: .center, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: transaksiView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: segeraLakukanPembayaranLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 14, text: "Segera lakukan pembayaran sebelum :", kerning: 0.04)
            
            detailBayarView.addSubview(tanggalWaktuPembayarannLabel)
            UIHelper.makeLabel(label: tanggalWaktuPembayarannLabel, corner: 0, allignment: .center, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: segeraLakukanPembayaranLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, heightAnchor: 17, widthAnchor: 0)
            UIHelper.setTextLabel(label: tanggalWaktuPembayarannLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Jumat, 1 Nov 2019, 19.21 WIB", kerning: 0.16)
            
            detailBayarView.addSubview(virtualAccountView)
            UIHelper.makeView(view: virtualAccountView, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: tanggalWaktuPembayarannLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 21, corner: 10, heightAnchor: 94, widthAnchor: 0)
            virtualAccountView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            virtualAccountView.layer.borderWidth = 0.5
            
            virtualAccountView.addSubview(tranferkeNomorLabel)
            UIHelper.makeLabel(label: tranferkeNomorLabel, corner: 0, allignment: .left, leadingAnchor: virtualAccountView.leadingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: 15, trailingConstant: -15, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: tranferkeNomorLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 14, text: "Transfer ke nomor virtual account :", kerning: 0.16)
            
            virtualAccountView.addSubview(iconMetodeBayarImage)
            UIHelper.makeImageView(imageView: iconMetodeBayarImage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: tranferkeNomorLabel.bottomAnchor, leadingConstant: 17, topConstant: 15, corner: 0, heightAnchor: 16)
            iconMetodeBayarImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
            
            virtualAccountView.addSubview(nomorVirtualAccountLabel)
            UIHelper.makeLabel(label: nomorVirtualAccountLabel, corner: 0, allignment: .right, leadingAnchor: iconMetodeBayarImage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: tranferkeNomorLabel.bottomAnchor, leadingConstant: 16, trailingConstant: -16, topConstant: 16, heightAnchor: 15, widthAnchor: 0)
            UIHelper.setTextLabel(label: nomorVirtualAccountLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "008-2345-567-10879", kerning: 0.16)
            
            virtualAccountView.addSubview(salinNomorRekening)
            UIHelper.makeLabel(label: salinNomorRekening, corner: 0, allignment: .right, leadingAnchor: virtualAccountView.leadingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: nomorVirtualAccountLabel.bottomAnchor, leadingConstant: 16, trailingConstant: -16, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
            UIHelper.setTextLabel(label: salinNomorRekening, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 10, text: "Salin nomor rekening", kerning: 0.5)
            salinNomorRekening.isUserInteractionEnabled = true
            
            detailBayarView.addSubview(panduanPembayranLabel)
            UIHelper.makeLabel(label: panduanPembayranLabel, corner: 0, allignment: .left, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: virtualAccountView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
           UIHelper.setTextLabel(label: panduanPembayranLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Panduan Pembayaran", kerning: 0.12)
            
            detailBayarView.addSubview(internetBankingView)
            UIHelper.makeView(view: internetBankingView, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: panduanPembayranLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 8, corner: 10, heightAnchor: 36, widthAnchor: 0)
            internetBankingView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            internetBankingView.layer.borderWidth = 0.5
            
            internetBankingView.addSubview(internetBankingLabel)
            UIHelper.makeLabel(label: internetBankingLabel, corner: 10, allignment: .left, leadingAnchor: internetBankingView.leadingAnchor, trailingAnchor: internetBankingView.trailingAnchor, topAnchor: internetBankingView.topAnchor, leadingConstant: 0, trailingConstant: -50, topConstant: 0, heightAnchor: 36, widthAnchor: 0)
            UIHelper.setTextLabel(label: internetBankingLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "   Internet Banking", kerning: 0.6)
            
            internetBankingView.addSubview(rightButtonInternet)
            UIHelper.makeSmallButton(smallButton: rightButtonInternet, leadingAnchor: internetBankingLabel.trailingAnchor, topAnchor: internetBankingView.topAnchor, leadingConstant: 20, topConstant: 12, corner: 0, heightAnchor: 11, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
            rightButtonInternet.setImage(UIImage(named: "next"), for: .normal)
            
            
            detailBayarView.addSubview(mobileBankingView)
            UIHelper.makeView(view: mobileBankingView, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: internetBankingView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 5, corner: 10, heightAnchor: 36, widthAnchor: 0)
            mobileBankingView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            mobileBankingView.layer.borderWidth = 0.5

            mobileBankingView.addSubview(mobileBankingLabel)
            UIHelper.makeLabel(label: mobileBankingLabel, corner: 10, allignment: .left, leadingAnchor: mobileBankingView.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: mobileBankingView.safeAreaLayoutGuide.trailingAnchor, topAnchor: mobileBankingView.topAnchor, leadingConstant: 0, trailingConstant: -50, topConstant: 0, heightAnchor: 36, widthAnchor: 0)
            UIHelper.setTextLabel(label: mobileBankingLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "   Mobile Banking", kerning: 0.6)
            
            mobileBankingView.addSubview(rightButtonMobile)
            rightButtonMobile.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
               rightButtonMobile.trailingAnchor.constraint(equalTo: mobileBankingView.trailingAnchor, constant: -24),
               rightButtonMobile.topAnchor.constraint(equalTo: mobileBankingView.topAnchor, constant: 12),
               rightButtonMobile.heightAnchor.constraint(equalToConstant:11),
               rightButtonMobile.widthAnchor.constraint(equalToConstant: 6)
           ])
            rightButtonMobile.setImage(UIImage(named: "next"), for: .normal)
           rightButtonMobile.layoutIfNeeded()
            
            detailBayarView.addSubview(lihatTransaksiButton)
            UIHelper.makeButton(button: lihatTransaksiButton, leadingAnchor: detailBayarView.leadingAnchor, trailingAnchor: detailBayarView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: height*0.8-45, corner: 24, heightAnchor: 48, widthAnchor: 0)
            lihatTransaksiButton.setTitle("LIHAT TRANSAKSI", for: .normal)
            lihatTransaksiButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        }
        
        func setupNavBarDetailBayar(){
            let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
            self.navigationItem.leftBarButtonItem = customButtonNav
            navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            UINavigationBar.appearance().isTranslucent = false
             let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
                   UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "PEMBAYARAN", kerning: 0)
                   navigationItem.titleView = titleLabel
            
        }
        
        @objc func backButtonTapped() {
            navigationController?.popViewController(animated: true)
        }
    }
