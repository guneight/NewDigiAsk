//
//  ExtensionProfileVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 03/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension ProfileViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuProfile.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as! profielTableViewCell
        cell.iconImage.image = UIImage(named: "\(menuProfile[indexPath.row]).png")
        cell.menuProfileLabel.text = menuProfile[indexPath.row]
        
        cell.deskripsiProfileLabel.text = deskripsiMenuProfile[indexPath.row]
        cell.rightButton.setImage(UIImage(named: "next.png"), for: .normal)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if menuProfile[indexPath.row] == "Profile" {
            let editProfileVC = storyboard?.instantiateViewController(identifier: "EditProfileViewController")  as! EditProfileViewController
            self.navigationController?.pushViewController(editProfileVC, animated: true)
            print(indexPath.row)
        }else if menuProfile[indexPath.row] == "Tentang Kami"{
            let tentangKamiVC =  storyboard?.instantiateViewController(withIdentifier: "TentangKamiViewController") as! TentangKamiViewController
            self.navigationController?.pushViewController(tentangKamiVC, animated: true)
        }else if menuProfile[indexPath.row] == "Polis"{
            let polisVC = storyboard?.instantiateViewController(withIdentifier: "PolisViewController") as! PolisViewController
            self.navigationController?.pushViewController(polisVC, animated: true)
        }else if menuProfile[indexPath.row] == "Monitoring Klaim"{
            let monitoringKlaimVC = storyboard?.instantiateViewController(withIdentifier: "MonitoringKlaimViewController") as! MonitoringKlaimViewController
            self.navigationController?.pushViewController(monitoringKlaimVC, animated: true)
        }else if menuProfile[indexPath.row] == "List Tertanggung"{
            let listTertanggungVC = storyboard?.instantiateViewController(identifier: "ListTertanggungViewController") as! ListTertanggungViewController
            self.navigationController?.pushViewController(listTertanggungVC, animated: true)
        }else if menuProfile[indexPath.row] == "List Penerima Manfaat"{
            let listPenerimaManfaatVC = storyboard?.instantiateViewController(identifier: "DaftarTertanggungViewController") as! DaftarTertanggungViewController
            self.navigationController?.pushViewController(listPenerimaManfaatVC, animated: true)
        }else if menuProfile[indexPath.row] == "Keluar" {
            print("keluar")
            let homeVC = self.navigationController?.viewControllers.first as! HomeMenuViewController
            homeVC.loginStatus = 0
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
    func setupUI(){
        view.addSubview(profileTable)
        profileTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            profileTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            profileTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        profileTable.showsVerticalScrollIndicator = false
        profileTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        profileTable.backgroundColor = .white
      
        
    }
    
    func setupNavBar(){
          
          let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
          self.navigationItem.leftBarButtonItem = customButtonNav
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
          navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
         let backItem = UIBarButtonItem()
            backItem.title = "HOME"
            let titleFont  = UIFont(name: fontNameHelper.NunitoExtraBold, size: 14)
            backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
            navigationItem.leftBarButtonItems = [customButtonNav, backItem]
          
      }
    @objc func backButtonTapped() {
        let homeVC = storyboard?.instantiateViewController(identifier: "HomeMenuViewController") as! HomeMenuViewController
      navigationController?.pushViewController(homeVC, animated: true)
    }
}


class profielTableViewCell: UITableViewCell{
    let iconImage = UIImageView()
    let lineView = UIView()
    let rightButton = UIButton()
    let menuProfileLabel = UILabel()
    let deskripsiProfileLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .white
        self.contentView.addSubview(iconImage)
        UIHelper.makeImageView(imageView: iconImage, leadingAnchor: self.contentView.leadingAnchor, topAnchor: self.contentView.topAnchor, leadingConstant: 25, topConstant: 10, corner: 0, heightAnchor: 16)
        iconImage.widthAnchor.constraint(equalToConstant: 16).isActive = true
        iconImage.contentMode = .scaleAspectFit
        
        self.contentView.addSubview(menuProfileLabel)
        UIHelper.makeLabel(label: menuProfileLabel, corner: 0, allignment: .left, leadingAnchor: iconImage.trailingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 20, trailingConstant: -40, topConstant: 8, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: menuProfileLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .bold, fontSize: 12, text: "profile", kerning: 0)
        
        self.contentView.addSubview(deskripsiProfileLabel)
        UIHelper.makeLabel(label: deskripsiProfileLabel, corner: 0, allignment: .left, leadingAnchor: iconImage.trailingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: menuProfileLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -40, topConstant: 5, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiProfileLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Dekripsi", kerning: 0)
        
        self.contentView.addSubview(rightButton)
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -25),
            rightButton.widthAnchor.constraint(equalToConstant: 6),
            rightButton.heightAnchor.constraint(equalToConstant: 10),
            rightButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10)
        ])
        
        self.contentView.addSubview(lineView)
        UIHelper.makeView(view: lineView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: deskripsiProfileLabel.bottomAnchor, leadingConstant: 22, trailingConstant: -22, topConstant: 13, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineView.backgroundColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        
        
    }
    required init?(coder: NSCoder) {
        super.init(coder:coder)
    }
}
