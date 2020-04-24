//
//  ExtensionVerifikasiEmailVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 23/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension VerifkasiEmailViewController {
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(verifikasiEmailView)
        UIHelper.makeView(view: verifikasiEmailView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        verifikasiEmailView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        verifikasiEmailView.addSubview(titleVerifikasiLabel)
        UIHelper.makeLabel(label: titleVerifikasiLabel, corner: 0, allignment: .center, leadingAnchor: verifikasiEmailView.leadingAnchor, trailingAnchor: verifikasiEmailView.trailingAnchor, topAnchor: verifikasiEmailView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant:34 , heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: titleVerifikasiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .semibold, fontSize: 15, text: "Verifikasi Email", kerning: 0.8)
        
        verifikasiEmailView.addSubview(melaluiEmailBaseView)
        UIHelper.makeView(view: melaluiEmailBaseView, leadingAnchor: verifikasiEmailView.leadingAnchor, trailingAnchor: verifikasiEmailView.trailingAnchor, topAnchor: titleVerifikasiLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 50, corner: 10, heightAnchor: 93, widthAnchor: 0)
        melaluiEmailBaseView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        melaluiEmailBaseView.isUserInteractionEnabled = true
        
        melaluiEmailBaseView.addSubview(emailIconImage)
        UIHelper.makeImageView(imageView: emailIconImage, leadingAnchor: melaluiEmailBaseView.leadingAnchor, topAnchor: melaluiEmailBaseView.topAnchor, leadingConstant: 18, topConstant: 5, corner: 0, heightAnchor: 80)
        emailIconImage.widthAnchor.constraint(equalToConstant: 45).isActive = true
        emailIconImage.image = UIImage(named: "emailIcon")
        emailIconImage.contentMode = .scaleAspectFit
        
        
        melaluiEmailBaseView.addSubview(melaluiemailLabel)
        UIHelper.makeLabel(label: melaluiemailLabel, corner: 0, allignment: .left, leadingAnchor: emailIconImage.trailingAnchor, trailingAnchor: melaluiemailLabel.trailingAnchor, topAnchor: melaluiEmailBaseView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 21, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: melaluiemailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .medium, fontSize: 14, text: "Melalui Email ke", kerning: 0.84)
        
        melaluiEmailBaseView.addSubview(emailLabel)
        UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: emailIconImage.trailingAnchor, trailingAnchor: melaluiEmailBaseView.trailingAnchor, topAnchor: melaluiemailLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: emailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .medium, fontSize: 14, text: "endahtri@gmail.com", kerning: 0.84)
        
    }
            
      func setupUINavBarVerEmail() {
          let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
          self.navigationItem.leftBarButtonItem = customButtonNav
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
          UINavigationBar.appearance().isTranslucent = false
          navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
              title: "DAFTAR", style: .plain, target: nil, action: nil)
      }
      @objc func backButtonTapped() {
          navigationController?.popToRootViewController(animated: true)
      }
    
}
