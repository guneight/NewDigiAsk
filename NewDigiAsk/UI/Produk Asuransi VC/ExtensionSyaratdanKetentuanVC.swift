//
//  ExtensionSyaratdanKetentuanVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension SyaratdanKetentuanViewController {
    func setupUI(){
        let height = view.frame.size.height
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(produkBaseView)
        produkBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkBaseView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            produkBaseView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            produkBaseView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            produkBaseView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        produkBaseView.layer.cornerRadius = 20
        produkBaseView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        produkBaseView.backgroundColor = #colorLiteral(red: 0.6549019608, green: 0.6980392157, blue: 0.8980392157, alpha: 0.7728756421)
        produkBaseView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2017337329)
        produkBaseView.layoutIfNeeded()
        
        produkBaseView.addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
             NSLayoutConstraint.activate([
                 lineView.widthAnchor.constraint(equalToConstant: 280),
                 lineView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 lineView.heightAnchor.constraint(equalToConstant: 2),
                 lineView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 32)
             ])
        lineView.backgroundColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        
        prosesStackView.translatesAutoresizingMaskIntoConstraints =  false
        produkBaseView.addSubview(prosesStackView)
        NSLayoutConstraint.activate([
            prosesStackView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 15),
            prosesStackView.widthAnchor.constraint(equalToConstant: 290),
            prosesStackView.centerXAnchor.constraint(equalTo: produkBaseView.centerXAnchor),
            prosesStackView.heightAnchor.constraint(equalToConstant: 35)
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
        produkImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        produkImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        produkImage.image = UIImage(named: "produkIconWhite")
        produkImage.contentMode = .center
        produkImage.layer.masksToBounds = true
        produkImage.layer.cornerRadius = 17
        produkImage.layer.borderWidth = 1
        
        
        prosesStackView.addArrangedSubview(tertanggungImage)
        tertanggungImage.translatesAutoresizingMaskIntoConstraints = false
        tertanggungImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tertanggungImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        tertanggungImage.layer.masksToBounds = true
        tertanggungImage.layer.cornerRadius = 17
        tertanggungImage.image = UIImage(named: "profileIcon")
        tertanggungImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(kerangjangImage)
        kerangjangImage.translatesAutoresizingMaskIntoConstraints = false
        kerangjangImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        kerangjangImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        kerangjangImage.layer.masksToBounds = true
        kerangjangImage.layer.cornerRadius = 17
        kerangjangImage.image = UIImage(named: "keranjangIcon")
        kerangjangImage.contentMode = .center
        
        
        prosesStackView.addArrangedSubview(checkOutImage)
        checkOutImage.translatesAutoresizingMaskIntoConstraints = false
        checkOutImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        checkOutImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        checkOutImage.layer.masksToBounds = true
        checkOutImage.layer.cornerRadius = 17
        checkOutImage.image = UIImage(named: "rpIcon")
        checkOutImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(completeImage)
        completeImage.translatesAutoresizingMaskIntoConstraints = false
        completeImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        completeImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        completeImage.layer.masksToBounds = true
        completeImage.layer.cornerRadius = 17
        completeImage.image = UIImage(named: "checkfinishIcon")
        completeImage.contentMode = .center
        
        produkBaseView.addSubview(syaratDanKetentuanView)
        UIHelper.makeView(view: syaratDanKetentuanView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height, widthAnchor: 0 )
        syaratDanKetentuanView.backgroundColor = .white
        
        syaratDanKetentuanView.addSubview(SyaratDanKetentuanScrollView)
        
        SyaratDanKetentuanScrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            SyaratDanKetentuanScrollView.leadingAnchor.constraint(equalTo: syaratDanKetentuanView.leadingAnchor),
            SyaratDanKetentuanScrollView.trailingAnchor.constraint(equalTo: syaratDanKetentuanView.trailingAnchor),
            SyaratDanKetentuanScrollView.topAnchor.constraint(equalTo: syaratDanKetentuanView.topAnchor),
            SyaratDanKetentuanScrollView.heightAnchor.constraint(equalToConstant: height*0.77)
        ])
        SyaratDanKetentuanScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        SyaratDanKetentuanScrollView.isScrollEnabled = true
        SyaratDanKetentuanScrollView.showsVerticalScrollIndicator = false
        SyaratDanKetentuanScrollView.layoutIfNeeded()
        
        syaratDanKetentuanView.addSubview(setujuButton)
        if device == "iPhone"{
            UIHelper.makeButton(button: setujuButton, leadingAnchor: syaratDanKetentuanView.leadingAnchor, trailingAnchor: syaratDanKetentuanView.trailingAnchor, topAnchor:view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: -20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        }else{
            UIHelper.makeButton(button: setujuButton, leadingAnchor: syaratDanKetentuanView.leadingAnchor, trailingAnchor: syaratDanKetentuanView.trailingAnchor, topAnchor:view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: -60, corner: 24, heightAnchor: 48, widthAnchor: 0)
        }
        setujuButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        setujuButton.setTitle("SETUJU", for: .normal)
        
        syaratDanKetentuanView.addSubview(setujuView)
        UIHelper.makeView(view: setujuView, leadingAnchor: syaratDanKetentuanView.leadingAnchor, trailingAnchor: syaratDanKetentuanView.trailingAnchor, topAnchor: SyaratDanKetentuanScrollView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        setujuView.backgroundColor = .clear
        setujuView.isUserInteractionEnabled = true
        
        SyaratDanKetentuanScrollView.addSubview(syaratDanKetentuanContainerView)
        syaratDanKetentuanContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            syaratDanKetentuanContainerView.leadingAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.leadingAnchor),
            syaratDanKetentuanContainerView.trailingAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.trailingAnchor),
            syaratDanKetentuanContainerView.topAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.topAnchor),
            syaratDanKetentuanContainerView.bottomAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.bottomAnchor),
            syaratDanKetentuanContainerView.heightAnchor.constraint(equalToConstant: 1000),
            syaratDanKetentuanContainerView.widthAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.widthAnchor)
        ])
        let heightConstraint = syaratDanKetentuanContainerView.heightAnchor.constraint(equalTo: SyaratDanKetentuanScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        
        
        syaratDanKetentuanContainerView.addSubview(syaratDanKetentuanLabel)
        UIHelper.makeLabel(label: syaratDanKetentuanLabel, corner: 0, allignment: .left, leadingAnchor: syaratDanKetentuanContainerView.leadingAnchor, trailingAnchor: syaratDanKetentuanContainerView.trailingAnchor, topAnchor: syaratDanKetentuanContainerView.topAnchor, leadingConstant: 27, trailingConstant: -27, topConstant: 30, heightAnchor: 15, widthAnchor: 0)
        UIHelper.setTextLabel(label: syaratDanKetentuanLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "SYARAT DAN KETENTUAN", kerning: 0)
        
        syaratDanKetentuanContainerView.addSubview(detailSyaratdanKetentuanLabel)
        UIHelper.makeLabel(label: detailSyaratdanKetentuanLabel, corner: 0, allignment: .left, leadingAnchor: syaratDanKetentuanContainerView.leadingAnchor, trailingAnchor: syaratDanKetentuanContainerView.trailingAnchor, topAnchor: syaratDanKetentuanLabel.bottomAnchor, leadingConstant: 27, trailingConstant: -27, topConstant: 20, heightAnchor: heightdetailSyaratdanKetentuanLabel, widthAnchor: 0)
        UIHelper.setTextLabel(label: detailSyaratdanKetentuanLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 14, text: " ", kerning: 0)
        detailSyaratdanKetentuanLabel.numberOfLines = 0
        
    }
    
    
    func setupNavBarSyaratdanKetentuan(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
         let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
               UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "PRODUK", kerning: 0)
               navigationItem.titleView = titleLabel
        
    }
    
    @objc func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func setupAnimation(){
//        UIButton.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
//               self.setujuButton.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
//           }, completion: nil)
           
       }
}

