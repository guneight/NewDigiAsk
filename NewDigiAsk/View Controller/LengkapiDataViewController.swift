//
//  LengkapiDataViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 22/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class LengkapiDataViewController: UIViewController {
    
    let lengkapiDataView = UIView()
    let lengkapiDataAndaLabel = UILabel()
    let namaLengkapLabel = UILabel()
    let NamaLengkapTextField = UITextField()
    let underLineNamaLengkap = UIView()
    let selesaiButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUINav()
        setupUI()
        view.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }
    
    func  setupUI(){
        view.addSubview(lengkapiDataView)
        lengkapiDataView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lengkapiDataView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            lengkapiDataView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            lengkapiDataView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            lengkapiDataView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        lengkapiDataView.layer.masksToBounds = true
        lengkapiDataView.layer.cornerRadius = 20
        lengkapiDataView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        lengkapiDataView.backgroundColor = .white
        
        lengkapiDataView.addSubview(lengkapiDataAndaLabel)
        UIHelper.makeLabel(label: lengkapiDataAndaLabel, corner: 0, allignment: .center, leadingAnchor: lengkapiDataView.leadingAnchor, trailingAnchor: lengkapiDataView.trailingAnchor, topAnchor: lengkapiDataView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 90, heightAnchor: 20, widthAnchor: 0)
        lengkapiDataAndaLabel.text = "Lengkapi data Anda"
        lengkapiDataAndaLabel.font = UIFont(name: "AvantGarde Bk BT", size: 15)
        
        lengkapiDataView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: lengkapiDataView.leadingAnchor, trailingAnchor: lengkapiDataView.trailingAnchor, topAnchor: lengkapiDataAndaLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 30, heightAnchor: 18, widthAnchor: 0)
        namaLengkapLabel.text = "Nama Lengkap"
        namaLengkapLabel.font  = UIFont(name: "AvantGarde Bk BT", size: 12)
        
        lengkapiDataView.addSubview(NamaLengkapTextField)
        UIHelper.makeTetxField(textField: NamaLengkapTextField, leadingAnchor: lengkapiDataView.leadingAnchor, trailingAnchor: lengkapiDataView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 44, trailingConstant: -44, topConstant: 20, corner: 0, heightAnchor: 22, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        NamaLengkapTextField.font = UIFont(name: "AvantGarde Bk BT", size: 16)
        
        lengkapiDataView.addSubview(underLineNamaLengkap)
        UIHelper.makeView(view: underLineNamaLengkap, leadingAnchor: lengkapiDataView.leadingAnchor, trailingAnchor: lengkapiDataView.trailingAnchor, topAnchor: NamaLengkapTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 15, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineNamaLengkap.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        underLineNamaLengkap.backgroundColor?.withAlphaComponent(0.5)
        
        lengkapiDataView.addSubview(selesaiButton)
        UIHelper.makeButton(button: selesaiButton, leadingAnchor: lengkapiDataView.leadingAnchor, trailingAnchor: lengkapiDataView.trailingAnchor, topAnchor: underLineNamaLengkap.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 30, corner: 24, heightAnchor: 48, widthAnchor: 0)
        selesaiButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        selesaiButton.setTitle("SELESAI", for: .normal)
    }
    
    
    func setupUINav(){
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

}
