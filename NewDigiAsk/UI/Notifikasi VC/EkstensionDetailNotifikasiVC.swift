//
//  EkstensionDetailNotifikasiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DetailNotifikasiViewController {
    
    func setupUI(){
        
        view.backgroundColor = .white
        view.addSubview(detailNotifikasiScroolView)
        UIHelper.makeScroolView(scrollView: detailNotifikasiScroolView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, widthAnchor: 0, scrollAble: true, scrollShow: true)
        detailNotifikasiScroolView.backgroundColor = .white
        
        detailNotifikasiScroolView.addSubview(detailNotifikasiBaseView)
        detailNotifikasiBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailNotifikasiBaseView.leadingAnchor.constraint(equalTo: detailNotifikasiScroolView.leadingAnchor),
            detailNotifikasiBaseView.trailingAnchor.constraint(equalTo: detailNotifikasiScroolView.trailingAnchor),
            detailNotifikasiBaseView.topAnchor.constraint(equalTo: detailNotifikasiScroolView.topAnchor),
            detailNotifikasiBaseView.bottomAnchor.constraint(equalTo: detailNotifikasiScroolView.bottomAnchor),
            detailNotifikasiBaseView.heightAnchor.constraint(equalToConstant: 1282),
            detailNotifikasiBaseView.widthAnchor.constraint(equalTo: detailNotifikasiScroolView.widthAnchor)
            ])
        let heightConstraint = detailNotifikasiBaseView.heightAnchor.constraint(equalTo: detailNotifikasiScroolView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        detailNotifikasiBaseView.backgroundColor = .white
        
        detailNotifikasiBaseView.addSubview(detailNotifikasiImageView)
        UIHelper.makeImageView(imageView: detailNotifikasiImageView, leadingAnchor: detailNotifikasiBaseView.leadingAnchor, topAnchor: detailNotifikasiBaseView.topAnchor, leadingConstant: 20, topConstant: 10, corner: 10, heightAnchor: 100)
        detailNotifikasiImageView.trailingAnchor.constraint(equalTo: detailNotifikasiBaseView.trailingAnchor, constant: -20).isActive = true
        detailNotifikasiImageView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        detailNotifikasiBaseView.addSubview(detailNotifikasiLabel)
        UIHelper.makeLabel(label: detailNotifikasiLabel, corner: 0, allignment: .left, leadingAnchor: detailNotifikasiBaseView.leadingAnchor, trailingAnchor: detailNotifikasiBaseView.trailingAnchor, topAnchor: detailNotifikasiImageView.bottomAnchor, leadingConstant: 20, trailingConstant:-20, topConstant: 10, heightAnchor: 200, widthAnchor: 0)
        detailNotifikasiLabel.numberOfLines = 0
        UIHelper.setTextLabel(label: detailNotifikasiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .regular, fontSize: 12, text: "Manfaat akan diberikan dalam hal tertanggung meniggal dunia dalam periode polis sebagai akibat", kerning: 0.14)
        
    }
    
    func setupNavBarDetailNotifikasi(){
           let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
           self.navigationItem.leftBarButtonItem = customButtonNav
           navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
           navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
           navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
      let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
                         UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "NOTIFIKASI", kerning: 0)
                         navigationItem.titleView = titleLabel
           
              }
              
              @objc func backButtonTapped() {
                  navigationController?.popViewController(animated: true)
                  
              }
}
