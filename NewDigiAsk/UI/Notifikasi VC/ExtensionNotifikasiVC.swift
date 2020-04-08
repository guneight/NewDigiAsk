//
//  ExtensionNotifikasiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 31/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
extension NotifikasiViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notifikasiCell", for: indexPath) as! notifikasiListTableViewCell
        cell.backgroundColor = .white
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailNotifikasiVC = storyboard?.instantiateViewController(identifier: "DetailNotifikasiViewController") as! DetailNotifikasiViewController
        navigationController?.pushViewController(detailNotifikasiVC, animated: true)
    }
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(notifikasiBaseView)
        UIHelper.makeView(view: notifikasiBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        
        notifikasiBaseView.addSubview(notifikasiListTable)
        notifikasiListTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            notifikasiListTable.leadingAnchor.constraint(equalTo: notifikasiBaseView.leadingAnchor),
            notifikasiListTable.trailingAnchor.constraint(equalTo: notifikasiBaseView.trailingAnchor),
            notifikasiListTable.topAnchor.constraint(equalTo: notifikasiBaseView.topAnchor),
            notifikasiListTable.bottomAnchor.constraint(equalTo: notifikasiBaseView.bottomAnchor)
        ])
        notifikasiListTable.backgroundColor = .white
        notifikasiListTable.showsVerticalScrollIndicator = false
        
        notifikasiListTable.register(notifikasiListTableViewCell.self, forCellReuseIdentifier: "notifikasiCell")
        
    }
    
    func setupNavBarNotifikasi(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        let deleteButtonNav = UIBarButtonItem(image: UIImage(named: "whiteTrushIcon"), style: .plain, target: self, action: #selector(deleteButtonAction))
        self.navigationItem.leftBarButtonItem = customButtonNav
        self.navigationItem.rightBarButtonItem = deleteButtonNav
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
    
    @objc func deleteButtonAction(){
        
    }
           
    
}

class notifikasiListTableViewCell: UITableViewCell{
    let timeIconImage = UIImageView()
    let tanggalNotifikasilabel = UILabel()
    let notifikasiImage = UIImageView()
    let headerNotifikaiLabel = UILabel()
    let deskripsiNotifikasilabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(notifikasiImage)
        UIHelper.makeImageView(imageView: notifikasiImage, leadingAnchor: contentView.leadingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 24, topConstant: 10, corner: 10, heightAnchor: 100)
        notifikasiImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24).isActive = true
        notifikasiImage.contentMode = .scaleAspectFit
        notifikasiImage.backgroundColor = .gray
        
        contentView.addSubview(timeIconImage)
        UIHelper.makeImageView(imageView: timeIconImage, leadingAnchor: contentView.leadingAnchor, topAnchor: notifikasiImage.bottomAnchor, leadingConstant: 24, topConstant: 5, corner: 0, heightAnchor: 10)
        timeIconImage.heightAnchor.constraint(equalToConstant: 10).isActive = true
        timeIconImage.image = UIImage(named: "time")
        
        contentView.addSubview(tanggalNotifikasilabel)
        UIHelper.makeLabel(label: tanggalNotifikasilabel, corner: 0, allignment: .left, leadingAnchor: timeIconImage.trailingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: notifikasiImage.bottomAnchor, leadingConstant: 10, trailingConstant: -24, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalNotifikasilabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.431372549, green: 0.431372549, blue: 0.431372549, alpha: 1), weight: .regular, fontSize: 8, text: "24 Oktober 2019", kerning: 0.4)
        
        contentView.addSubview(headerNotifikaiLabel)
        UIHelper.makeLabel(label: headerNotifikaiLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: tanggalNotifikasilabel.bottomAnchor, leadingConstant: 24, trailingConstant: -30, topConstant: 5, heightAnchor: 14, widthAnchor: 0)
        
        UIHelper.setTextLabel(label: headerNotifikaiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .bold, fontSize: 13, text: "Askrindo serahkan bantuan mobil pintar untuk aceh", kerning: 0.13)
        headerNotifikaiLabel.backgroundColor = .white
        
        contentView.addSubview(deskripsiNotifikasilabel)
        UIHelper.makeLabel(label: deskripsiNotifikasilabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: headerNotifikaiLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -30, topConstant: 0, heightAnchor: 36, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiNotifikasilabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 13, text: "Manfaat akan diberikan dalam hal tertanggung meniggal dunia dalam periode polis sebagai akibat ", kerning: 0.13)
        deskripsiNotifikasilabel.backgroundColor = .white
        deskripsiNotifikasilabel.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
