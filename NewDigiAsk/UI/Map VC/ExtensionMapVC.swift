//
//  ExtensionMapVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 09/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension MapViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listPlaceTableViewCell", for: indexPath) as! listPlaceTableViewCell
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(mapBaseView)
        UIHelper.makeView(view: mapBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        mapBaseView.backgroundColor = .white
        
        mapBaseView.addSubview(mapView)
        mapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mapView.leadingAnchor.constraint(equalTo: mapBaseView.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: mapBaseView.trailingAnchor),
            mapView.topAnchor.constraint(equalTo: mapBaseView.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: mapBaseView.bottomAnchor)
            
        ])
        
        mapBaseView.addSubview(mapSearchBar)
        mapSearchBar.translatesAutoresizingMaskIntoConstraints = false
        mapSearchBar.placeholder = "Masukkan nama kota atau provinsi"
        NSLayoutConstraint.activate([
            mapSearchBar.leadingAnchor.constraint(equalTo: mapBaseView.leadingAnchor, constant: 0),
            mapSearchBar.trailingAnchor.constraint(equalTo: mapBaseView.trailingAnchor, constant: 0),
            mapSearchBar.topAnchor.constraint(equalTo: mapBaseView.topAnchor, constant: 0),
        ])
        
        mapSearchBar.backgroundColor = .clear
        mapSearchBar.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0)
        mapSearchBar.barTintColor = .white
        mapSearchBar.backgroundColor = .clear
        
        mapBaseView.addSubview(listPlaceTable)
        mapBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            listPlaceTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
//            listPlaceTable.leadingAnchor.constraint(equalTo: mapBaseView.leadingAnchor),
//            listPlaceTable.trailingAnchor.constraint(equalTo: mapBaseView.trailingAnchor),
//            listPlaceTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        listPlaceTable.backgroundColor = .white
        listPlaceTable.register(listPlaceTableViewCell.self, forCellReuseIdentifier: "listPlaceTableViewCell")
    }
    
    func setupNavBarMap(){
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


class listPlaceTableViewCell : UITableViewCell{
    let namaTempatLabel = UILabel()
    let alamatLabel = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.backgroundColor = .white
        self.contentView.addSubview(namaTempatLabel)
        UIHelper.makeLabel(label: namaTempatLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaTempatLabel, fontName: "Arial", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 12, text: "nama", kerning: 0.4)
        
        contentView.addSubview(alamatLabel)
        UIHelper.makeLabel(label: alamatLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: namaTempatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: alamatLabel, fontName: "Arial", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 12, text: "alamat", kerning: 0.4)
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
