//
//  VerifikasiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class VerifikasiViewController: UIViewController {
    let viewVerifikasi = UIView()
    let labelMetodeverifikasi = UILabel()
    let labelPilihSalahSatu = UILabel()
    let viewMetodeWhatsapp = UIView()
    let viewMetodeSms = UIView()
    let imageMetodeWhatsapp = UIImageView()
    let imageMetodeSms = UIImageView()
    let labelMelauiWhatsapp = UILabel()
    let labelNomorWhatsapp = UILabel()
    let labelMelaluiSms = UILabel()
    let labelNomorsms = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUI()
        view.layoutIfNeeded()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(moveTap(sender:)))
        viewMetodeWhatsapp.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
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
              title: "VERIFIKASI", style: .plain, target: nil, action: nil)
              
    }
    
    @objc func backButtonTapped() {
                navigationController?.popToRootViewController(animated: true)
              }
    
    func setupUI() {
        self.view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(viewVerifikasi)
        viewVerifikasi.translatesAutoresizingMaskIntoConstraints = false
        viewVerifikasi.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewVerifikasi.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewVerifikasi.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        viewVerifikasi.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        viewVerifikasi.layer.masksToBounds = true
        viewVerifikasi.layer.cornerRadius = 20
        viewVerifikasi.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        viewVerifikasi.backgroundColor = .white
        
        viewVerifikasi.addSubview(labelMetodeverifikasi)
        UIHelper.makeLabel(label: labelMetodeverifikasi, corner: 0, allignment: .center, leadingAnchor: viewVerifikasi.leadingAnchor, trailingAnchor: viewVerifikasi.trailingAnchor, topAnchor: viewVerifikasi.topAnchor, leadingConstant: 104, trailingConstant: -104, topConstant: 34, heightAnchor: 20, widthAnchor: 0)
        labelMetodeverifikasi.text = "Pilih Metode Verifikasi"
        labelMetodeverifikasi.font = UIFont(name: "AvantGarde Bk BT", size: 15)
        
        viewVerifikasi.addSubview(labelPilihSalahSatu)
        UIHelper.makeLabel(label: labelPilihSalahSatu, corner: 0, allignment: .center, leadingAnchor: viewVerifikasi.leadingAnchor, trailingAnchor: viewVerifikasi.trailingAnchor, topAnchor: labelMetodeverifikasi.topAnchor, leadingConstant: 47, trailingConstant: -47, topConstant: 20, heightAnchor: 44, widthAnchor: 0)
        labelPilihSalahSatu.text = "Pilih salah satu metode dibawah ini untuk mendapatkan kode verifikasi"
        labelPilihSalahSatu.font = UIFont(name: "AvantGarde Bk BT", size: 14)
        labelPilihSalahSatu.numberOfLines = 2
        
        viewVerifikasi.addSubview(viewMetodeWhatsapp)
        UIHelper.makeView(view: viewMetodeWhatsapp, leadingAnchor: viewVerifikasi.leadingAnchor, trailingAnchor: viewVerifikasi.trailingAnchor, topAnchor: labelPilihSalahSatu.bottomAnchor, leadingConstant: 23, trailingConstant: -23, topConstant: 18, corner: 10, heightAnchor: 93, widthAnchor: 0)
        viewMetodeWhatsapp.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        
        viewMetodeWhatsapp.addSubview(imageMetodeWhatsapp)
        UIHelper.makeImageView(imageView: imageMetodeWhatsapp, leadingAnchor: viewMetodeWhatsapp.leadingAnchor, topAnchor: viewMetodeWhatsapp.topAnchor, leadingConstant: 17, topConstant: 18, corner: 0, heightAnchor: 60)
        imageMetodeWhatsapp.heightAnchor.constraint(equalToConstant: 60).isActive = true
        imageMetodeWhatsapp.widthAnchor.constraint(equalToConstant: 45 ).isActive = true
        imageMetodeWhatsapp.backgroundColor = .red
        
        viewMetodeWhatsapp.addSubview(labelMelauiWhatsapp)
        UIHelper.makeLabel(label: labelMelauiWhatsapp, corner: 0, allignment: .left, leadingAnchor: imageMetodeWhatsapp.trailingAnchor, trailingAnchor: viewMetodeWhatsapp.trailingAnchor, topAnchor: viewMetodeWhatsapp.topAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 20, heightAnchor: 20, widthAnchor: 0)
        labelMelauiWhatsapp.text = "Melalui WhatsApp ke nomor"
        labelMelauiWhatsapp.font = UIFont(name: "AvantGarde Bk BT", size: 14)
        
        viewMetodeWhatsapp.addSubview(labelNomorWhatsapp)
        UIHelper.makeLabel(label: labelNomorWhatsapp, corner: 0, allignment: .left, leadingAnchor: imageMetodeWhatsapp.trailingAnchor, trailingAnchor: viewMetodeWhatsapp.trailingAnchor, topAnchor: labelMelauiWhatsapp.bottomAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 5, heightAnchor: 20, widthAnchor: 0)
        labelNomorWhatsapp.text = "1234567890"
        labelNomorWhatsapp.font = UIFont(name: "AvantGarde Bk BT", size: 14)
        
        
        viewVerifikasi.addSubview(viewMetodeSms)
        UIHelper.makeView(view: viewMetodeSms, leadingAnchor: viewVerifikasi.leadingAnchor, trailingAnchor: viewVerifikasi.trailingAnchor, topAnchor: viewMetodeWhatsapp.bottomAnchor, leadingConstant: 23, trailingConstant: -23, topConstant: 18, corner: 10, heightAnchor: 93, widthAnchor: 0)
        viewMetodeSms.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
        
        viewMetodeSms.addSubview(imageMetodeSms)
        UIHelper.makeImageView(imageView: imageMetodeSms, leadingAnchor: viewMetodeSms.leadingAnchor, topAnchor: viewMetodeSms.topAnchor, leadingConstant: 17, topConstant: 18, corner: 0, heightAnchor: 60)
        imageMetodeSms.heightAnchor.constraint(equalToConstant: 60).isActive = true
        imageMetodeSms.widthAnchor.constraint(equalToConstant: 45 ).isActive = true
        imageMetodeSms.backgroundColor = .red
        
        viewMetodeSms.addSubview(labelMelaluiSms)
        UIHelper.makeLabel(label: labelMelaluiSms, corner: 0, allignment: .left, leadingAnchor: imageMetodeSms.trailingAnchor, trailingAnchor: viewMetodeSms.trailingAnchor, topAnchor: viewMetodeSms.topAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 20, heightAnchor: 20, widthAnchor: 0)
        labelMelaluiSms.text = "Melalui SMS ke nomor"
        labelMelaluiSms.font = UIFont(name: "AvantGarde Bk BT", size: 14)
        
        viewMetodeSms.addSubview(labelNomorsms)
        UIHelper.makeLabel(label: labelNomorsms, corner: 0, allignment: .left, leadingAnchor: imageMetodeSms.trailingAnchor, trailingAnchor: viewMetodeWhatsapp.trailingAnchor, topAnchor: labelMelaluiSms.bottomAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 5, heightAnchor: 20, widthAnchor: 0)
        labelNomorsms.text = "1234567890"
        labelNomorsms.font = UIFont(name: "AvantGarde Bk BT", size: 14)
        
    }
    
    
    @objc func moveTap(sender: UITapGestureRecognizer){
        let verifikasivc = storyboard?.instantiateViewController(identifier: "InputKodeVerifikasiViewController")  as! InputKodeVerifikasiViewController
        self.navigationController?.pushViewController(verifikasivc, animated: true)
        print("pressss")
    }
    
    
}
