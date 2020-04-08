//
//  ExtensionHubungiKamiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension HubungiKamiViewController{
    
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(hubungiKamiLabel)
        
        
    }
    
    func setupNavBarHubungiKami(){
    let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
    self.navigationItem.leftBarButtonItem = customButtonNav
    navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
    navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
    navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
    navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    UINavigationBar.appearance().isTranslucent = false
    navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "NOTIFIKASI", style: .plain, target: nil, action: nil)
    
       }
       
       @objc func backButtonTapped() {
           navigationController?.popViewController(animated: true)
           
       }
}
