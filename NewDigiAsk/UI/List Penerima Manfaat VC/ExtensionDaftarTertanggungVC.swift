//
//  ExtensionDaftarPenerimaManfaatVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension DaftarTertanggungViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DaftarTertanggungCell", for: indexPath) as! DaftarTertanggungTableViewCell
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func setupUI(){
        let height = view.frame.size.height
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(daftarPenerimaManfaatBaseView)
        UIHelper.makeView(view: daftarPenerimaManfaatBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: height, widthAnchor: 0)
        daftarPenerimaManfaatBaseView.backgroundColor = .white
        
        daftarPenerimaManfaatBaseView.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.leadingAnchor.constraint(equalTo: daftarPenerimaManfaatBaseView.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: daftarPenerimaManfaatBaseView.trailingAnchor),
            searchBar.topAnchor.constraint(equalTo: daftarPenerimaManfaatBaseView.topAnchor)
        ])
        
        searchBar.placeholder = "Tulis nama atau email"
        searchBar.backgroundColor = .white
        searchBar.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        searchBar.barTintColor = .white
        searchBar.backgroundColor = .white
        
        daftarPenerimaManfaatBaseView.addSubview(daftarPenerimaManfaatTabelView)
        daftarPenerimaManfaatTabelView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            daftarPenerimaManfaatTabelView.leadingAnchor.constraint(equalTo: daftarPenerimaManfaatBaseView.leadingAnchor),
            daftarPenerimaManfaatTabelView.trailingAnchor.constraint(equalTo: daftarPenerimaManfaatBaseView.trailingAnchor),
            daftarPenerimaManfaatTabelView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            daftarPenerimaManfaatTabelView.bottomAnchor.constraint(equalTo: daftarPenerimaManfaatBaseView.bottomAnchor)
        ])
        daftarPenerimaManfaatTabelView.backgroundColor = .white
        daftarPenerimaManfaatTabelView.register(DaftarTertanggungTableViewCell.self, forCellReuseIdentifier: "DaftarTertanggungCell")
    }
    
    func setupNavBarDaftarPenerimaManfaat(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
         let addTertanggungButtonNav =  UIBarButtonItem(image: UIImage(named: "addButton"), style: .plain, target: self, action: #selector(addTertanggungAction))
        self.navigationItem.leftBarButtonItem = customButtonNav
        self.navigationItem.rightBarButtonItem = addTertanggungButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "DAFTAR PENERIMA MANFAAT", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func backButtonTapped() {
           navigationController?.popViewController(animated: true)
           
       }
    
    @objc func addTertanggungAction(){
        let addTertanggungVC = storyboard?.instantiateViewController(withIdentifier: "AddTertanggungViewController") as! AddTertanggungViewController
        navigationController?.pushViewController(addTertanggungVC, animated: true)
    }
}


class DaftarTertanggungTableViewCell : UITableViewCell{
    let namaPenerimaManfaatLabel = UILabel()
    let nomorPenerimaManfaatLabel = UILabel()
    let emailPenerimaManfaatLabel = UILabel()
    let teleponPenerimaManfaatLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
        contentView.addSubview(namaPenerimaManfaatLabel)
        UIHelper.makeLabel(label: namaPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaPenerimaManfaatLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .bold, fontSize: 12, text: "No Name", kerning: 0.12)
        
        contentView.addSubview(nomorPenerimaManfaatLabel)
        UIHelper.makeLabel(label: nomorPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: namaPenerimaManfaatLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -20, topConstant: 5, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPenerimaManfaatLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: "No KTP    : 0987654321", kerning: 0.12)
        
        contentView.addSubview(emailPenerimaManfaatLabel)
        UIHelper.makeLabel(label: emailPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: nomorPenerimaManfaatLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -20, topConstant: 0, heightAnchor: 14, widthAnchor: 0)
         UIHelper.setTextLabel(label: emailPenerimaManfaatLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: "Email   : gmail@gmail.com", kerning: 0.12)
        
        contentView.addSubview(teleponPenerimaManfaatLabel)
        UIHelper.makeLabel(label: teleponPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: emailPenerimaManfaatLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -20, topConstant: 0, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: teleponPenerimaManfaatLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: "No HP  : 01234567890", kerning: 0.12)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
