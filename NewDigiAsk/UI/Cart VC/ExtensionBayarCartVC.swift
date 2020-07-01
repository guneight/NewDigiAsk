//
//  ExtensionBayarCartVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
extension BayarCartViewController{
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
            
            produkBaseView.addSubview(bayarView)
        UIHelper.makeView(view: bayarView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height, widthAnchor: 0)
            bayarView.backgroundColor = .white
            
            bayarView.addSubview(totalBayarView)
            UIHelper.makeView(view: totalBayarView, leadingAnchor: bayarView.leadingAnchor, trailingAnchor: bayarView.trailingAnchor, topAnchor: bayarView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 21, corner: 10, heightAnchor: 71, widthAnchor: 0)
            totalBayarView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            totalBayarView.layer.borderWidth = 0.5
            
            totalBayarView.addSubview(totalBayarLabel)
            UIHelper.makeLabel(label: totalBayarLabel, corner: 0, allignment: .left, leadingAnchor: totalBayarView.leadingAnchor, trailingAnchor: totalBayarView.trailingAnchor, topAnchor: totalBayarView.topAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: totalBayarLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Total Pembayaran", kerning: 0.16)
            
            totalBayarView.addSubview(nilaiTotalLabel)
            UIHelper.makeLabel(label: nilaiTotalLabel, corner: 0, allignment: .left, leadingAnchor: totalBayarView.leadingAnchor, trailingAnchor: totalBayarView.trailingAnchor, topAnchor: totalBayarLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: nilaiTotalLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 14, text: "Rp 3.000.000,-", kerning: 0.16)
            
            bayarView.addSubview(metodeBayarView)
            UIHelper.makeView(view: metodeBayarView, leadingAnchor: bayarView.leadingAnchor, trailingAnchor: bayarView.trailingAnchor, topAnchor: totalBayarView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 11, corner: 10, heightAnchor: 132, widthAnchor: 0)
            metodeBayarView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            metodeBayarView.layer.borderWidth = 0.5
            
            metodeBayarView.addSubview(iconImageMetodeBayar)
            UIHelper.makeImageView(imageView: iconImageMetodeBayar, leadingAnchor: metodeBayarView.leadingAnchor, topAnchor: metodeBayarView.topAnchor, leadingConstant: 18, topConstant: 14, corner: 0, heightAnchor: 20)
            iconImageMetodeBayar.widthAnchor.constraint(equalToConstant: 50).isActive = true
            iconImageMetodeBayar.contentMode = .scaleAspectFit
            
            
            metodeBayarView.addSubview(namaMetodeBayar)
            UIHelper.makeLabel(label: namaMetodeBayar, corner: 0, allignment: .right, leadingAnchor: iconImageMetodeBayar.trailingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: metodeBayarView.topAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 13, heightAnchor: 17, widthAnchor: 0)
            UIHelper.setTextLabel(label: namaMetodeBayar, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.6)
            
            metodeBayarView.addSubview(lineMetodeBayar)
            UIHelper.makeView(view: lineMetodeBayar, leadingAnchor: metodeBayarView.leadingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: namaMetodeBayar.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 13, corner: 0, heightAnchor: 1, widthAnchor: 0)
            lineMetodeBayar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            metodeBayarView.addSubview(deskripsiMetodePembayaran)
            UIHelper.makeLabel(label: deskripsiMetodePembayaran, corner: 0, allignment: .left, leadingAnchor: metodeBayarView.leadingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: lineMetodeBayar.bottomAnchor, leadingConstant: 18, trailingConstant: -18, topConstant: 13, heightAnchor: 70, widthAnchor: 0)
            UIHelper.setTextLabel(label: deskripsiMetodePembayaran, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Kode pembayaran akan didapatkan setelah klik botton Pembayaran. \nUser tidak perlu melakukan konfirmasi", kerning: 0.6)
            deskripsiMetodePembayaran.numberOfLines = 0
            
            bayarView.addSubview(bayarButton)
            UIHelper.makeButton(button: bayarButton, leadingAnchor: bayarView.leadingAnchor, trailingAnchor: bayarView .trailingAnchor, topAnchor: bayarView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: height*0.8-45, corner: 24, heightAnchor: 48, widthAnchor: 0)
            bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            bayarButton.setTitle("BAYAR", for: .normal)
            
        }
        
        func setupNavBarBayar(){
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
