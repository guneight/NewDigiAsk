//
//  ExtensiInfoVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension InfoViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellInfo", for: indexPath) as! infoListTableViewCell
        cell.selectionStyle = .none
        cell.backgroundColor = .white
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if view.frame.size.width > 414{
            return view.frame.size.width/6
        }else{
            return 70
        }
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let infoDetailVC = storyboard?.instantiateViewController(withIdentifier: "InfoDetailViewController") as! InfoDetailViewController
        navigationController?.pushViewController(infoDetailVC, animated: true)
        
    }
    
    
    func setupUIInfo(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(infoBaseView)
        infoBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            infoBaseView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            infoBaseView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            infoBaseView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            infoBaseView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        infoBaseView.layer.masksToBounds = true
        infoBaseView.layer.cornerRadius = 20
        infoBaseView.backgroundColor = .white
        infoBaseView.addSubview(infoImage)
        if view.frame.size.width > 414{
            UIHelper.makeImageView(imageView: infoImage, leadingAnchor: infoBaseView.leadingAnchor, topAnchor: infoBaseView.topAnchor, leadingConstant: 23, topConstant: 20, corner: 10, heightAnchor: view.frame.size.width/2.5)
            
        }else{
            UIHelper.makeImageView(imageView: infoImage, leadingAnchor: infoBaseView.leadingAnchor, topAnchor: infoBaseView.topAnchor, leadingConstant: 23, topConstant: 20, corner: 10, heightAnchor: 157)
        }
        infoImage.trailingAnchor.constraint(equalTo: infoBaseView.trailingAnchor, constant: -23).isActive = true
        
        
        infoImage.contentMode = .scaleToFill
        //        infoImage.backgroundColor = .red
        infoImage.image = UIImage(named: "info")
        infoImage.isUserInteractionEnabled = true
        
        infoBaseView.addSubview(titleInfoLabel)
        UIHelper.makeLabel(label: titleInfoLabel, corner: 0, allignment: .left, leadingAnchor: infoBaseView.leadingAnchor, trailingAnchor: infoBaseView.trailingAnchor, topAnchor: infoImage.bottomAnchor, leadingConstant: 23, trailingConstant: -23, topConstant: 12, heightAnchor: 21, widthAnchor: 0)
        UIHelper.setTextLabel(label: titleInfoLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 13, text: " Askrindo serahkan bantuan mobil pintar untuk Aceh", kerning: 0.13)
        
        infoBaseView.addSubview(timeIconImage)
        UIHelper.makeImageView(imageView: timeIconImage, leadingAnchor: infoBaseView.leadingAnchor, topAnchor: titleInfoLabel.bottomAnchor, leadingConstant: 24, topConstant: 5, corner: 0, heightAnchor: 10)
        timeIconImage.widthAnchor.constraint(equalToConstant: 10).isActive = true
        timeIconImage.image = UIImage(named: "time")
        
        infoBaseView.addSubview(tanggalInfoLabel)
        UIHelper.makeLabel(label: tanggalInfoLabel, corner: 0, allignment: .left, leadingAnchor: timeIconImage.trailingAnchor, trailingAnchor: infoImage.trailingAnchor, topAnchor: titleInfoLabel.bottomAnchor, leadingConstant: 10, trailingConstant: -23, topConstant: 5, heightAnchor: 10, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalInfoLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .light, fontSize: 8, text: "24 Oktober 2019", kerning: 0.4)
        
        
        let deskripsiInfo = "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat langsung dari suatu kecelakaan yang dijamin dalam polis.Santunan sebesar 100% (seratus persen) Nilai Santunan untuk Manfaat Kematian akan dibayarkan kepada Ahli Waris yang namanya tercantum dalam Ikhtisar Pertanggungan."
        
        infoBaseView.addSubview(bodyInfoLabel)
        UIHelper.makeLabel(label: bodyInfoLabel, corner: 0, allignment: .left, leadingAnchor: infoBaseView.leadingAnchor, trailingAnchor: infoBaseView.trailingAnchor, topAnchor: tanggalInfoLabel.bottomAnchor, leadingConstant: 23, trailingConstant: -23, topConstant: 2, heightAnchor: 50, widthAnchor: 0)
        UIHelper.setTextLabel(label: bodyInfoLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: deskripsiInfo, kerning: 0.06)
        bodyInfoLabel.numberOfLines = 0
        
        infoBaseView.addSubview(underline)
        UIHelper.makeLabel(label: underline, corner: 0, allignment: .left, leadingAnchor: infoBaseView.leadingAnchor, trailingAnchor: infoBaseView.trailingAnchor, topAnchor: bodyInfoLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 15, heightAnchor: 5, widthAnchor: 0)
        underline.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        
        infoBaseView.addSubview(listInfoTable)
        listInfoTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            listInfoTable.leadingAnchor.constraint(equalTo: infoBaseView.leadingAnchor, constant: 23),
            listInfoTable.trailingAnchor.constraint(equalTo: infoBaseView.trailingAnchor, constant: -23),
            listInfoTable.topAnchor.constraint(equalTo: underline.bottomAnchor, constant: 15),
            listInfoTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        listInfoTable.showsVerticalScrollIndicator = false
        listInfoTable.backgroundColor = .white
        listInfoTable.register(infoListTableViewCell.self, forCellReuseIdentifier: "cellInfo")
        listInfoTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        listInfoTable.delegate = self
        listInfoTable.dataSource = self
    }
    
    
    
    func setupNavBarInfo(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
        backItem.title = "HOME"
        let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
        backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
        navigationItem.leftBarButtonItems = [customButtonNav, backItem]
        
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
    
}


class infoListTableViewCell : UITableViewCell{
    let headerInfoListLabel = UILabel()
    let timeIconInfoListImage = UIImageView()
    let tanggalInfoListLabel = UILabel()
    let infoListImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let width = UIScreen.main.bounds.size.width
        contentView.addSubview(headerInfoListLabel)
        headerInfoListLabel.backgroundColor = .white
        
        if  width > 414 {
            UIHelper.makeLabel(label: headerInfoListLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, trailingConstant: -(width*0.35), topConstant: 0, heightAnchor: width/13, widthAnchor: 0)
             headerInfoListLabel.numberOfLines = 4
           
        }else{
            UIHelper.makeLabel(label: headerInfoListLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, trailingConstant: -110, topConstant: 0, heightAnchor: 40, widthAnchor: 0)
             headerInfoListLabel.numberOfLines = 2
        }
       
        
        UIHelper.setTextLabel(label: headerInfoListLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 13, text: "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat langsung dari suatu kecelakaan yang dijamin dalam polis.Santunan sebesar 100% (seratus persen) Nilai Santunan untuk Manfaat Kematian akan dibayarkan kepada Ahli Waris yang namanya tercantum dalam Ikhtisar Pertanggungan.", kerning: 0.13)
//        headerInfoListLabel.backgroundColor = .white
        
        
        contentView.addSubview(timeIconInfoListImage)
        UIHelper.makeImageView(imageView: timeIconInfoListImage, leadingAnchor: contentView.leadingAnchor, topAnchor: headerInfoListLabel.bottomAnchor, leadingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 10)
        timeIconInfoListImage.widthAnchor.constraint(equalToConstant: 10).isActive = true
        timeIconInfoListImage.image = UIImage(named: "time")
        
        contentView.addSubview(tanggalInfoListLabel)
        UIHelper.makeLabel(label: tanggalInfoListLabel, corner: 0, allignment: .left, leadingAnchor: timeIconInfoListImage.trailingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: headerInfoListLabel.bottomAnchor, leadingConstant: 7, trailingConstant: -110, topConstant: 5, heightAnchor: 10, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalInfoListLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.431372549, green: 0.431372549, blue: 0.431372549, alpha: 1), weight: .bold, fontSize: 8, text: " 24 Oktober 2019", kerning: 0.4)
        tanggalInfoListLabel.backgroundColor = .white
        
        contentView.addSubview(infoListImage)
        infoListImage.translatesAutoresizingMaskIntoConstraints = false
        if width > 414 {
            NSLayoutConstraint.activate([
                infoListImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                infoListImage.topAnchor.constraint(equalTo: contentView.topAnchor),
                //            infoListImage.heightAnchor.constraint(equalToConstant: 95),
                infoListImage.widthAnchor.constraint(equalToConstant: width/3),
                infoListImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
            ])
            
        }else{
            NSLayoutConstraint.activate([
                infoListImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                infoListImage.topAnchor.constraint(equalTo: contentView.topAnchor),
                //            infoListImage.heightAnchor.constraint(equalToConstant: 95),
                infoListImage.widthAnchor.constraint(equalToConstant: 95),
                infoListImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
            ])
        }
        
        infoListImage.backgroundColor = .white
        infoListImage.contentMode = .scaleAspectFit
        infoListImage.image = UIImage(named: "info-1")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
