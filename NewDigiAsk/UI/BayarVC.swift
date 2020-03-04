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
        
        view.addSubview(totalBayarView)
        UIHelper.makeView(view: totalBayarView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: -21, corner: 10, heightAnchor: 71, widthAnchor: 0)
        totalBayarView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        totalBayarView.layer.borderWidth = 0.5
        
        totalBayarView.addSubview(totalBayarLabel)
        UIHelper.makeLabel(label: totalBayarLabel, corner: 0, allignment: .left, leadingAnchor: totalBayarView.leadingAnchor, trailingAnchor: totalBayarView.trailingAnchor, topAnchor: totalBayarView.topAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        totalBayarLabel.text = "TOTAL PEMBAYARAN"
        
        totalBayarView.addSubview(nilaiTotalLabel)
        UIHelper.makeLabel(label: nilaiTotalLabel, corner: 0, allignment: .left, leadingAnchor: totalBayarView.leadingAnchor, trailingAnchor: totalBayarView.trailingAnchor, topAnchor: totalBayarLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -12, topConstant: 5, heightAnchor: 15, widthAnchor: 0)
        nilaiTotalLabel.text = "Rp 30.000.000 "
        
        view.addSubview(metodeBayarView)
        UIHelper.makeView(view: metodeBayarView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: totalBayarView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 11, corner: 10, heightAnchor: 132, widthAnchor: 0)
        metodeBayarView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        metodeBayarView.layer.borderWidth = 0.5
        
        metodeBayarView.addSubview(iconImageMetodeBayar)
        UIHelper.makeImageView(imageView: iconImageMetodeBayar, leadingAnchor: metodeBayarView.leadingAnchor, topAnchor: metodeBayarView.topAnchor, leadingConstant: 18, topConstant: 14, corner: 0, heightAnchor: 20)
        iconImageMetodeBayar.widthAnchor.constraint(equalToConstant: 50).isActive = true
        iconImageMetodeBayar.backgroundColor = .gray
        
        metodeBayarView.addSubview(namaMetodeBayar)
        UIHelper.makeLabel(label: namaMetodeBayar, corner: 0, allignment: .right, leadingAnchor: iconImageMetodeBayar.trailingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: metodeBayarView.topAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 13, heightAnchor: 17, widthAnchor: 0)
        namaMetodeBayar.text = "BCA Virtual Account"
        
        metodeBayarView.addSubview(lineMetodeBayar)
        UIHelper.makeView(view: lineMetodeBayar, leadingAnchor: metodeBayarView.leadingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: namaMetodeBayar.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 13, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineMetodeBayar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        metodeBayarView.addSubview(deskripsiMetodePembayaran)
        UIHelper.makeLabel(label: deskripsiMetodePembayaran, corner: 0, allignment: .left, leadingAnchor: metodeBayarView.leadingAnchor, trailingAnchor: metodeBayarView.trailingAnchor, topAnchor: lineMetodeBayar.bottomAnchor, leadingConstant: 18, trailingConstant: -18, topConstant: 13, heightAnchor: 70, widthAnchor: 0)
        deskripsiMetodePembayaran.text = "Kode pembayaran akan didapatkan setelah klik button pembayaran. User tidak perlu melakukan onfirmasi"
        deskripsiMetodePembayaran.numberOfLines = 0
        
        view.addSubview(bayarButton)
        UIHelper.makeButton(button: bayarButton, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: height*0.8, corner: 24, heightAnchor: 48, widthAnchor: 0)
        bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        bayarButton.setTitle("BAYAR", for: .normal)
        
    }
    
    @objc func swipeDown() {
         self.dismiss(animated: true, completion: nil)
    }
}
