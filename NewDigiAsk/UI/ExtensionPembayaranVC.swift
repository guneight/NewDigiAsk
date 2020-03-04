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
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
              gesture.direction = .down
        let height = view.frame.size.height
        
        view.addSubview(totalPembayaranView)
        UIHelper.makeView(view: totalPembayaranView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 21, corner: 10, heightAnchor: 71, widthAnchor: 0)
        totalPembayaranView.layer.borderWidth = 0.5
        totalPembayaranView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        totalPembayaranView.addSubview(totalPemabayaranLabel)
        UIHelper.makeLabel(label: totalPemabayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranView.topAnchor, leadingConstant: 15, trailingConstant: -15, topConstant: 15, heightAnchor: 12, widthAnchor: 0)
        totalPemabayaranLabel.text = "TOTAL PEMBAYARAN"
        
        totalPembayaranView.addSubview(nilaiTotalPembayaranLabel)
        UIHelper.makeLabel(label: nilaiTotalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: nilaiTotalPembayaranLabel.trailingAnchor, topAnchor: totalPemabayaranLabel.bottomAnchor, leadingConstant: 15, trailingConstant: -15, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        nilaiTotalPembayaranLabel.text = "Rp 30.000.000"
        nilaiTotalPembayaranLabel.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        view.addSubview(pilihMetodePembayaranLabel)
        UIHelper.makeLabel(label: pilihMetodePembayaranLabel, corner: 0, allignment:.left, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: totalPembayaranView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 25, heightAnchor: 16, widthAnchor: 0)
        pilihMetodePembayaranLabel.text = "Pilih Metode Pembayaran"
        
        view.addSubview(virtualAccountLabel)
        UIHelper.makeLabel(label: virtualAccountLabel, corner: 0, allignment: .left, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: pilihMetodePembayaranLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        virtualAccountLabel.text = "Virtual Account"
        
        view.addSubview(virtualAccountView)
        UIHelper.makeView(view: virtualAccountView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: virtualAccountLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 110, widthAnchor: 0)
        virtualAccountView.layer.borderWidth = 0.5
        virtualAccountView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        virtualAccountView.addSubview(iconBCAimage)
        UIHelper.makeImageView(imageView: iconBCAimage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: 12, topConstant: 20, corner: 0, heightAnchor: 13)
        iconBCAimage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconBCAimage.backgroundColor = .gray
        
        virtualAccountView.addSubview(virtualAccountBCALabel)
        UIHelper.makeLabel(label: virtualAccountBCALabel, corner: 0, allignment: .left, leadingAnchor: iconBCAimage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor: virtualAccountView.topAnchor, leadingConstant: 12, trailingConstant: 50, topConstant: 17, heightAnchor: 12, widthAnchor: 0)
        virtualAccountBCALabel.text = "BCA Virtual Account"
               
        virtualAccountView.addSubview(iconMandiriImage)
        UIHelper.makeImageView(imageView: iconMandiriImage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: iconBCAimage.topAnchor, leadingConstant: 12, topConstant: 25, corner: 0, heightAnchor: 13)
        iconMandiriImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconMandiriImage.backgroundColor = .gray
               
        virtualAccountView.addSubview(virtualAccountMandiriLabel)
        UIHelper.makeLabel(label: virtualAccountMandiriLabel, corner: 0, allignment: .left, leadingAnchor: iconMandiriImage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor:virtualAccountBCALabel.topAnchor, leadingConstant: 12, trailingConstant: 50, topConstant: 25, heightAnchor: 17, widthAnchor: 0)
        virtualAccountMandiriLabel.text = "Mandiri Virtual Account"

        virtualAccountView.addSubview(iconBNIImage)
        UIHelper.makeImageView(imageView: iconBNIImage, leadingAnchor: virtualAccountView.leadingAnchor, topAnchor: iconMandiriImage.topAnchor, leadingConstant: 12, topConstant: 25, corner: 0, heightAnchor: 13)
        iconBNIImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconBNIImage.backgroundColor = .gray
                    
        virtualAccountView.addSubview(virtualAccountBNILabel)
        UIHelper.makeLabel(label: virtualAccountBNILabel, corner: 0, allignment: .left, leadingAnchor: iconBNIImage.trailingAnchor, trailingAnchor: virtualAccountView.trailingAnchor, topAnchor:virtualAccountMandiriLabel.topAnchor, leadingConstant: 12, trailingConstant: 50, topConstant: 25, heightAnchor: 17, widthAnchor: 0)
        virtualAccountBNILabel.text = "BNI Virtual Account"
        
        view.addSubview(KartuKreditLabel)
        UIHelper.makeLabel(label: KartuKreditLabel, corner: 0, allignment: .left, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: virtualAccountView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 35, heightAnchor: 16, widthAnchor: 0)
        KartuKreditLabel.text = "Kartu Kredit"
        
        view.addSubview(kartuKreditView)
        UIHelper.makeView(view: kartuKreditView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: KartuKreditLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 36, widthAnchor: 0)
        kartuKreditView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        kartuKreditView.layer.borderWidth = 0.5
        
        kartuKreditView.addSubview(iconKartuKreditImage)
        UIHelper.makeImageView(imageView: iconKartuKreditImage, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: kartuKreditView.topAnchor, leadingConstant: 12, topConstant:12 , corner: 0, heightAnchor: 14)
        iconKartuKreditImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        iconKartuKreditImage.backgroundColor = .gray
        
        kartuKreditView.addSubview(nomorkartuKreditLabel)
        UIHelper.makeLabel(label: nomorkartuKreditLabel, corner: 0, allignment: .left, leadingAnchor: iconKartuKreditImage.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: kartuKreditView.topAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        nomorkartuKreditLabel.text = "Kartu Kredit"
        
        view.addSubview(uangElektronikLabel)
        UIHelper.makeLabel(label: uangElektronikLabel, corner: 0, allignment: .left, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: kartuKreditView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        uangElektronikLabel.text = "Uang Elektronik"
        
        view.addSubview(uangElektronikView)
        UIHelper.makeView(view: uangElektronikView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: uangElektronikLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 110, widthAnchor: 0)
        uangElektronikView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        uangElektronikView.layer.borderWidth = 0.5
        
        uangElektronikView.addSubview(iconOVOImage)
        UIHelper.makeImageView(imageView: iconOVOImage, leadingAnchor: uangElektronikView.leadingAnchor, topAnchor: uangElektronikView.topAnchor, leadingConstant: 12, topConstant: 12, corner: 0, heightAnchor: 16)
        iconOVOImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconOVOImage.backgroundColor = .gray
        
        uangElektronikView.addSubview(ovoLabel)
        UIHelper.makeLabel(label: ovoLabel, corner: 0, allignment: .left, leadingAnchor: iconOVOImage.trailingAnchor, trailingAnchor: uangElektronikView.trailingAnchor, topAnchor: uangElektronikView.topAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        ovoLabel.text = "OVO"
        
        uangElektronikView.addSubview(iconGopayImage)
        UIHelper.makeImageView(imageView: iconGopayImage, leadingAnchor: uangElektronikView.leadingAnchor, topAnchor: iconOVOImage.bottomAnchor, leadingConstant: 12, topConstant: 12, corner: 0, heightAnchor: 16)
        iconGopayImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconGopayImage.backgroundColor = .gray
               
        uangElektronikView.addSubview(gopayLabel)
        UIHelper.makeLabel(label: gopayLabel, corner: 0, allignment: .left, leadingAnchor: iconGopayImage.trailingAnchor, trailingAnchor: uangElektronikView.trailingAnchor, topAnchor: ovoLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        gopayLabel.text = "Gopay"
        
        
        uangElektronikView.addSubview(iconLinAjaImage)
        UIHelper.makeImageView(imageView: iconLinAjaImage, leadingAnchor: uangElektronikView.leadingAnchor, topAnchor: iconGopayImage.bottomAnchor, leadingConstant: 12, topConstant: 12, corner: 0, heightAnchor: 16)
        iconLinAjaImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconLinAjaImage.backgroundColor = .gray
               
        uangElektronikView.addSubview(linkAjaLabel)
        UIHelper.makeLabel(label: linkAjaLabel, corner: 0, allignment: .left, leadingAnchor: iconLinAjaImage.trailingAnchor, trailingAnchor: uangElektronikView.trailingAnchor, topAnchor: gopayLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -50, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        linkAjaLabel.text = "LinkAja"
                           
    }
    @objc func swipeDown() {
                  self.dismiss(animated: true, completion: nil)
             }
    
}
