//
//  ExtensionProfileVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 03/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension ProfileViewController{
    
    func setupUI(){
        
        
    }
    
    func setupUIDaftarVC(){
          
          let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
          self.navigationItem.leftBarButtonItem = customButtonNav
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
          UINavigationBar.appearance().isTranslucent = false
          navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
          title: "PROFILE", style: .plain, target: nil, action: nil)
          
      }
    @objc func backButtonTapped() {
      navigationController?.popToRootViewController(animated: true)
    }
}


class profielTableViewCell: UITableViewCell{
    let iconImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
    }
    required init?(coder: NSCoder) {
        super.init(coder:coder)
    }
}
