//
//  ExtensionInfoDetailVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension InfoDetailViewController{
    
    func setupUIInfoDetail(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(infoDetailScrollView)
        UIHelper.makeScroolView(scrollView: infoDetailScrollView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, widthAnchor: 0, scrollAble: true, scrollShow: false)
        infoDetailScrollView.layer.masksToBounds = true
        infoDetailScrollView.layer.cornerRadius = 20
        infoDetailScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        infoDetailScrollView.addSubview(infoDetailView)
        infoDetailView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            infoDetailView.leadingAnchor.constraint(equalTo: infoDetailScrollView.leadingAnchor),
            infoDetailView.trailingAnchor.constraint(equalTo: infoDetailScrollView.trailingAnchor),
            infoDetailView.topAnchor.constraint(equalTo: infoDetailScrollView.topAnchor),
            infoDetailView.bottomAnchor.constraint(equalTo: infoDetailScrollView.bottomAnchor),
            infoDetailView.heightAnchor.constraint(equalToConstant: 1100),
            infoDetailView.widthAnchor.constraint(equalTo: infoDetailScrollView.widthAnchor)
            ])
        let heightConstraint = infoDetailView.heightAnchor.constraint(equalTo: infoDetailScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        infoDetailView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        infoDetailView.layer.masksToBounds = true
        infoDetailView.layer.cornerRadius = 20
        
        infoDetailView.addSubview(titleInfoDetailLabel)
        UIHelper.makeLabel(label: titleInfoDetailLabel, corner: 0, allignment: .left, leadingAnchor: infoDetailView.leadingAnchor, trailingAnchor: infoDetailView.trailingAnchor, topAnchor: infoDetailView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 21, heightAnchor: 40, widthAnchor: 0)
        UIHelper.setTextLabel(label: titleInfoDetailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Askrindo serahkan bantuan mobil pintar untuk Aceh", kerning: 0.48)
        titleInfoDetailLabel.numberOfLines = 0
        
        infoDetailView.addSubview(timeIconInfoDetailImage)
        UIHelper.makeImageView(imageView: timeIconInfoDetailImage, leadingAnchor: infoDetailView.leadingAnchor, topAnchor: titleInfoDetailLabel.bottomAnchor, leadingConstant: 24, topConstant: 10, corner: 0, heightAnchor: 10)
        timeIconInfoDetailImage.widthAnchor.constraint(equalToConstant: 10).isActive = true
        timeIconInfoDetailImage.image = UIImage(named: "time")
        
        infoDetailView.addSubview(tanggalInfoDetailLabel)
        UIHelper.makeLabel(label: tanggalInfoDetailLabel, corner: 0, allignment: .left, leadingAnchor: timeIconInfoDetailImage.trailingAnchor, trailingAnchor: infoDetailView.trailingAnchor, topAnchor: titleInfoDetailLabel.bottomAnchor, leadingConstant: 8, trailingConstant: -24, topConstant: 10, heightAnchor: 10, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalInfoDetailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .light, fontSize: 8, text: "24 Oktober 2019", kerning: 0.4)
        
        infoDetailView.addSubview(infoDetailImage)
        UIHelper.makeImageView(imageView: infoDetailImage, leadingAnchor: infoDetailView.leadingAnchor, topAnchor: tanggalInfoDetailLabel.bottomAnchor, leadingConstant: 24, topConstant: 15, corner: 20, heightAnchor: 160)
        infoDetailImage.trailingAnchor.constraint(equalTo: infoDetailView.trailingAnchor, constant: -24).isActive = true
        infoDetailImage.backgroundColor = .white
        infoDetailImage.image = UIImage(named: "info-1")
        
        infoDetailView.addSubview(detailInfoLabel)
        UIHelper.makeLabel(label: detailInfoLabel, corner: 0, allignment: .left, leadingAnchor: infoDetailView.leadingAnchor, trailingAnchor: infoDetailView.trailingAnchor, topAnchor: infoDetailImage.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, heightAnchor: 180, widthAnchor: 0)
        
        detailInfoLabel.backgroundColor = .white
        detailInfoLabel.numberOfLines = 0
        UIHelper.setTextLabel(label: detailInfoLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .light, fontSize: 12, text: "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat langsung dari suatu kecelakaan yang dijamin dalam polis.Santunan sebesar 100% (seratus persen) Nilai Santunan untuk Manfaat Kematian akan dibayarkan kepada Ahli Waris yang namanya tercantum dalam Ikhtisar Pertanggungan. Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat langsung dari suatu kecelakaan yang dijamin dalam polis.Santunan sebesar 100% (seratus persen) Nilai Santunan untuk Manfaat Kematian akan dibayarkan kepada Ahli Waris yang namanya tercantum dalam Ikhtisar Pertanggungan.", kerning: 0.4)
    }
    
    func setupNavBarInfoDetail(){
          let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
          self.navigationItem.leftBarButtonItem = customButtonNav
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
          UINavigationBar.appearance().isTranslucent = false
          navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
              title: "INFO", style: .plain, target: nil, action: nil)
          
      }
      
      @objc func backButtonTapped() {
          navigationController?.popViewController(animated: true)
          
      }
}
