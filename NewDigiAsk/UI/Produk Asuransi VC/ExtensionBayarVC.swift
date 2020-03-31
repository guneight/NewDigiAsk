//
//  BayarVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension BayarViewController{
    
    func setupUI(){
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
              gesture.direction = .down
        let height = view.frame.size.height
        view.backgroundColor = .clear
        
        view.addSubview(bayarView)
        UIHelper.makeView(view: bayarView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 45, corner: 20, heightAnchor: 0, widthAnchor: 0)
        bayarView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bayarView.backgroundColor = .white
        
        bayarView.addSubview(totalBayarView)
        UIHelper.makeView(view: totalBayarView, leadingAnchor: bayarView.leadingAnchor, trailingAnchor: bayarView.trailingAnchor, topAnchor: bayarView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 21, corner: 10, heightAnchor: 71, widthAnchor: 0)
        totalBayarView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        totalBayarView.layer.borderWidth = 0.5
        
        totalBayarView.addSubview(totalBayarLabel)
        UIHelper.makeLabel(label: totalBayarLabel, corner: 0, allignment: .left, leadingAnchor: totalBayarView.leadingAnchor, trailingAnchor: totalBayarView.trailingAnchor, topAnchor: totalBayarView.topAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalBayarLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Total Pembayaran", kerning: 0.16)
        
        totalBayarView.addSubview(nilaiTotalLabel)
        UIHelper.makeLabel(label: nilaiTotalLabel, corner: 0, allignment: .left, leadingAnchor: totalBayarView.leadingAnchor, trailingAnchor: totalBayarView.trailingAnchor, topAnchor: totalBayarLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 5, heightAnchor: 15, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiTotalLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 30.000.000,-", kerning: 0.16)
        
        bayarView.addSubview(metodeBayarView)
        UIHelper.makeView(view: metodeBayarView, leadingAnchor: bayarView.leadingAnchor, trailingAnchor: bayarView.trailingAnchor, topAnchor: totalBayarView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 11, corner: 10, heightAnchor: 132, widthAnchor: 0)
        metodeBayarView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        metodeBayarView.layer.borderWidth = 0.5
        
        metodeBayarView.addSubview(iconImageMetodeBayar)
        UIHelper.makeImageView(imageView: iconImageMetodeBayar, leadingAnchor: metodeBayarView.leadingAnchor, topAnchor: metodeBayarView.topAnchor, leadingConstant: 18, topConstant: 14, corner: 0, heightAnchor: 20)
        iconImageMetodeBayar.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        metodeBayarView.addSubview(namaMetodeBayar)
        UIHelper.makeLabel(label: namaMetodeBayar, corner: 0, allignment: .right, leadingAnchor: iconImageMetodeBayar.trailingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: metodeBayarView.topAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 13, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaMetodeBayar, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "BCA Virtual Account", kerning: 0.6)
        
        metodeBayarView.addSubview(lineMetodeBayar)
        UIHelper.makeView(view: lineMetodeBayar, leadingAnchor: metodeBayarView.leadingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: namaMetodeBayar.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 13, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineMetodeBayar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        metodeBayarView.addSubview(deskripsiMetodePembayaran)
        UIHelper.makeLabel(label: deskripsiMetodePembayaran, corner: 0, allignment: .left, leadingAnchor: metodeBayarView.leadingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: lineMetodeBayar.bottomAnchor, leadingConstant: 18, trailingConstant: -18, topConstant: 13, heightAnchor: 70, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiMetodePembayaran, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Kode pembayaran akan didapatkan estela klik botton Pembayaran. user tidal perlu melakukan konfirmasi", kerning: 0.6)
        deskripsiMetodePembayaran.numberOfLines = 0
        
        bayarView.addSubview(bayarButton)
        UIHelper.makeButton(button: bayarButton, leadingAnchor: bayarView.leadingAnchor, trailingAnchor: bayarView .trailingAnchor, topAnchor: bayarView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: height*0.8-45, corner: 24, heightAnchor: 48, widthAnchor: 0)
        bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        bayarButton.setTitle("BAYAR", for: .normal)
        
    }
    
    @objc func swipeDown() {
         self.dismiss(animated: true, completion: nil)
    }
}
