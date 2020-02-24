//
//  ExtensionProduk.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
let produkBaseView = UIView()
let prosesStackView : UIStackView = {
let stackViewCV = UIStackView()
    stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
    stackViewCV.distribution = UIStackView.Distribution.fillEqually
    stackViewCV.alignment = UIStackView.Alignment.center
    stackViewCV.backgroundColor = #colorLiteral(red: 0.2131774127, green: 0.6528760791, blue: 1, alpha: 1)
    stackViewCV.translatesAutoresizingMaskIntoConstraints = false
    stackViewCV.spacing = 30
return stackViewCV
}()
let lineView = UIView()
let viewContainerTableProduk = UIView()
let produkTable = UITableView()
let iconProdukImage = UIImage()
let produkLabel = UILabel()
let produkImage = UIImageView()
let tertanggungImage = UIImageView()
let kerangjangImage = UIImageView()
let checkOutImage = UIImageView()
let completeImage = UIImageView()


extension ProdukViewController {
    
    func setupUI(){
        
        view.addSubview(produkBaseView)
        produkBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkBaseView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            produkBaseView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            produkBaseView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            produkBaseView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
        produkBaseView.layer.cornerRadius = 20
        produkBaseView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        produkBaseView.backgroundColor = .red
        produkBaseView.layoutIfNeeded()
        
        produkBaseView.addSubview(lineView)
        UIHelper.makeView(view: lineView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: (view.frame.size.width-290)/2 , trailingConstant: -((view.frame.size.width-290)/2), topConstant: 32, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineView.widthAnchor.constraint(equalToConstant: 290).isActive = true
        lineView.backgroundColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        
        prosesStackView.translatesAutoresizingMaskIntoConstraints =  false
        produkBaseView.addSubview(prosesStackView)
        NSLayoutConstraint.activate([
            prosesStackView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 15),
            prosesStackView.widthAnchor.constraint(equalToConstant: 290),
            prosesStackView.centerXAnchor.constraint(equalTo: produkBaseView.centerXAnchor),
            prosesStackView.heightAnchor.constraint(equalToConstant: 34)
        ])
        prosesStackView.layoutIfNeeded()
        prosesStackView.backgroundColor?.withAlphaComponent(0)
        prosesStackView.alignment = .center
        prosesStackView.axis = .horizontal
        prosesStackView.distribution = UIStackView.Distribution.fillEqually
        
        prosesStackView.addArrangedSubview(produkImage)
        produkImage.translatesAutoresizingMaskIntoConstraints = false
        produkImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        produkImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
               
        produkImage.backgroundColor = .gray
        produkImage.image = UIImage(named: "cart.png")
        produkImage.contentMode = .scaleAspectFit
        produkImage.layer.masksToBounds = true
        produkImage.layer.cornerRadius = 17
    
        
        prosesStackView.addArrangedSubview(tertanggungImage)
        tertanggungImage.translatesAutoresizingMaskIntoConstraints = false
        tertanggungImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.backgroundColor = .green
        tertanggungImage.layer.masksToBounds = true
        tertanggungImage.layer.cornerRadius = 17
        
        prosesStackView.addArrangedSubview(kerangjangImage)
        kerangjangImage.translatesAutoresizingMaskIntoConstraints = false
        kerangjangImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.backgroundColor = .blue
        kerangjangImage.layer.masksToBounds = true
        kerangjangImage.layer.cornerRadius = 17
        
        prosesStackView.addArrangedSubview(checkOutImage)
        checkOutImage.translatesAutoresizingMaskIntoConstraints = false
        checkOutImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.backgroundColor = .yellow
        checkOutImage.layer.masksToBounds = true
        checkOutImage.layer.cornerRadius = 17
        
        prosesStackView.addArrangedSubview(completeImage)
        completeImage.translatesAutoresizingMaskIntoConstraints = false
        completeImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.backgroundColor = .black
        completeImage.layer.masksToBounds = true
        completeImage.layer.cornerRadius = 17
        
       
        produkBaseView.addSubview(viewContainerTableProduk)
        viewContainerTableProduk.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewContainerTableProduk.leadingAnchor.constraint(equalTo: produkBaseView.leadingAnchor),
            viewContainerTableProduk.trailingAnchor.constraint(equalTo: produkBaseView.trailingAnchor),
            viewContainerTableProduk.topAnchor.constraint(equalTo: prosesStackView.bottomAnchor, constant: 10),
            viewContainerTableProduk.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor, constant: 0)
        ])
        viewContainerTableProduk.backgroundColor = .white
        viewContainerTableProduk.layer.cornerRadius = 20
        viewContainerTableProduk.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        viewContainerTableProduk.layoutIfNeeded()
        
        viewContainerTableProduk.addSubview(produkTable)
        produkTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkTable.leadingAnchor.constraint(equalTo: viewContainerTableProduk.leadingAnchor),
            produkTable.trailingAnchor.constraint(equalTo: viewContainerTableProduk.trailingAnchor),
            produkTable.topAnchor.constraint(equalTo: viewContainerTableProduk.topAnchor, constant: 30),
            produkTable.bottomAnchor.constraint(equalTo: viewContainerTableProduk.bottomAnchor, constant: 0)
        ])
        
        produkTable.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
    }
    
    func setupNavBar(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
            self.navigationItem.leftBarButtonItem = customButtonNav
            navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            UINavigationBar.appearance().isTranslucent = false
            navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "PRODUK", style: .plain, target: nil, action: nil)
            
        }
        @objc func backButtonTapped() {
          navigationController?.popToRootViewController(animated: true)
        }
        
    
    
    
}
