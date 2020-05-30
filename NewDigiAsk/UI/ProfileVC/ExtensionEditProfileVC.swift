//
//  ExtensionEditProfileVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 04/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
extension EditProfileViewController{
    func setupUI(){
        let height = view.frame.size.height
        self.view.addSubview(editProfileScrollView)
        UIHelper.makeScroolView(scrollView: editProfileScrollView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, widthAnchor: 0, scrollAble: true, scrollShow: false)
        editProfileScrollView.heightAnchor.constraint(equalToConstant: height).isActive = true

        editProfileScrollView.addSubview(editProfileBaseView)
        editProfileBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editProfileBaseView.leadingAnchor.constraint(equalTo: editProfileScrollView.leadingAnchor),
            editProfileBaseView.trailingAnchor.constraint(equalTo: editProfileScrollView.trailingAnchor),
            editProfileBaseView.topAnchor.constraint(equalTo: editProfileScrollView.topAnchor),
            editProfileBaseView.bottomAnchor.constraint(equalTo: editProfileScrollView.bottomAnchor),
            editProfileBaseView.heightAnchor.constraint(equalToConstant: 1000),
            editProfileBaseView.widthAnchor.constraint(equalTo: editProfileScrollView.widthAnchor)
            ])
        let heightConstraint = editProfileBaseView.heightAnchor.constraint(equalTo: editProfileScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        editProfileBaseView.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        editProfileBaseView.layoutIfNeeded()
        
        editProfileBaseView.addSubview(attributView)
               UIHelper.makeImageView(imageView: attributView, leadingAnchor: editProfileBaseView.leadingAnchor, topAnchor: editProfileBaseView.topAnchor, leadingConstant: 0, topConstant: 0, corner: 0, heightAnchor: 90)
               attributView.trailingAnchor.constraint(equalTo: editProfileBaseView.trailingAnchor).isActive = true
               attributView.image = UIImage(named: "atribut")
               
        editProfileBaseView.addSubview(profileWhiteView)
        UIHelper.makeView(view: profileWhiteView, leadingAnchor: editProfileBaseView.leadingAnchor, trailingAnchor: editProfileBaseView.trailingAnchor, topAnchor: editProfileBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 70, corner: 20, heightAnchor: editProfileBaseView.frame.size.height, widthAnchor: 0)
        profileWhiteView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)


        editProfileBaseView.addSubview(photoImage)
        photoImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoImage.topAnchor.constraint(equalTo: editProfileBaseView.topAnchor, constant: 25),
            photoImage.centerXAnchor.constraint(equalTo: editProfileBaseView.centerXAnchor),
            photoImage.widthAnchor.constraint(equalToConstant: 111),
            photoImage.heightAnchor.constraint(equalToConstant: 111)
        ])
        photoImage.backgroundColor = .gray
        photoImage.layer.masksToBounds = true
        photoImage.layer.cornerRadius = 111/2
        photoImage.layer.borderWidth = 5
        photoImage.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)

        profileWhiteView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: profileWhiteView.topAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 70, heightAnchor: 12, widthAnchor: 0)
//        namaLengkapLabel.text = "Nama Lengkap"
        UIHelper.setTextLabel(label: namaLengkapLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Nama lengkap", kerning: 0)
        
        profileWhiteView.addSubview(namaLengkapTextField)
        UIHelper.makeTetxField(textField: namaLengkapTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 40, trailingConstant: 40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: namaLengkapTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Nama lengkap", kerning: 0.8)
        
        
        
        profileWhiteView.addSubview(editNamaLengkapButton)
        editNamaLengkapButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editNamaLengkapButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editNamaLengkapButton.topAnchor.constraint(equalTo: namaLengkapTextField.bottomAnchor, constant: -15),
            editNamaLengkapButton.widthAnchor.constraint(equalToConstant: 14),
            editNamaLengkapButton.heightAnchor.constraint(equalToConstant: 14)
        ])
        editNamaLengkapButton.setImage(UIImage(named: "editIcon"), for: .normal)
        
        profileWhiteView.addSubview(lineNamaLengkap)
        UIHelper.makeView(view: lineNamaLengkap, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: namaLengkapTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineNamaLengkap.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        profileWhiteView.addSubview(emailLabel)
        UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: lineNamaLengkap.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 14, heightAnchor: 12, widthAnchor: 0)
//        emailLabel.text = "Email"
        UIHelper.setTextLabel(label: emailLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Email", kerning: 0)
        
        profileWhiteView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: emailLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: emailTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Email", kerning: 0.8)
        
        profileWhiteView.addSubview(editEmailButton)
        editEmailButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editEmailButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editEmailButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -15),
            editEmailButton.widthAnchor.constraint(equalToConstant: 14),
            editEmailButton.heightAnchor.constraint(equalToConstant: 14)
        ])
        editEmailButton.setImage(UIImage(named: "editIcon"), for: .normal)
        
        profileWhiteView.addSubview(lineEmail)
        UIHelper.makeView(view: lineEmail, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        profileWhiteView.addSubview(kataSandiLabel)
        UIHelper.makeLabel(label: kataSandiLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: lineEmail.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 14, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: kataSandiLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Kata sandi", kerning: 0)
              
        profileWhiteView.addSubview(kataSandiTextField)
        UIHelper.makeTetxField(textField: kataSandiTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: kataSandiLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: kataSandiTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Kata sandi", kerning: 0.8)
        
        profileWhiteView.addSubview(editKataSandiButton)
        editKataSandiButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editKataSandiButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editKataSandiButton.topAnchor.constraint(equalTo: kataSandiTextField.bottomAnchor, constant: -15),
            editKataSandiButton.widthAnchor.constraint(equalToConstant: 14),
            editKataSandiButton.heightAnchor.constraint(equalToConstant: 14)
            ])
        editKataSandiButton.setImage(UIImage(named: "editIcon"), for: .normal)
              
        profileWhiteView.addSubview(lineKataSandi)
        UIHelper.makeView(view: lineKataSandi, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: kataSandiTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineKataSandi.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        profileWhiteView.addSubview(nomorTeleponLabel)
        UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: lineKataSandi.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 14, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTeleponLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Nomor Telelpon", kerning: 0)
              
        profileWhiteView.addSubview(nomorTeleponTextField)
        UIHelper.makeTetxField(textField: nomorTeleponTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: nomorTeleponLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: nomorTeleponTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Nomor telepon", kerning: 0.8)
        
        profileWhiteView.addSubview(editNomorTeleponButton)
        editNomorTeleponButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editNomorTeleponButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editNomorTeleponButton.topAnchor.constraint(equalTo: nomorTeleponTextField.bottomAnchor, constant: -15),
            editNomorTeleponButton.widthAnchor.constraint(equalToConstant: 14),
            editNomorTeleponButton.heightAnchor.constraint(equalToConstant: 14)
            ])
        editNomorTeleponButton.setImage(UIImage(named: "editIcon"), for: .normal)
        
        profileWhiteView.addSubview(linenomorTelepon)
        UIHelper.makeView(view: linenomorTelepon, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: nomorTeleponTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        linenomorTelepon.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)

               
        profileWhiteView.addSubview(tanggalLahirLabel)
        UIHelper.makeLabel(label: tanggalLahirLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: linenomorTelepon.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 14, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalLahirLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Tanggal Lahir", kerning: 0)
              
        profileWhiteView.addSubview(tanggalLahirTextField)
        UIHelper.makeTetxField(textField: tanggalLahirTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: tanggalLahirLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: tanggalLahirTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Tanggal lahir", kerning: 0.8)
        
        profileWhiteView.addSubview(editTanggalahirButton)
        editTanggalahirButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editTanggalahirButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editTanggalahirButton.topAnchor.constraint(equalTo: tanggalLahirTextField.bottomAnchor, constant: -15),
            editTanggalahirButton.widthAnchor.constraint(equalToConstant: 14),
            editTanggalahirButton.heightAnchor.constraint(equalToConstant: 14)
            ])
        editTanggalahirButton.setImage(UIImage(named: "editIcon"), for: .normal)
        
        
        profileWhiteView.addSubview(lineTanggalLahir)
        UIHelper.makeView(view: lineTanggalLahir, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: tanggalLahirTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineTanggalLahir.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)

        profileWhiteView.addSubview(kartuIdentitasLabel)
        UIHelper.makeLabel(label: kartuIdentitasLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: lineTanggalLahir.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 14, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: kartuIdentitasLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Kartu Identitas", kerning: 0)
        

        profileWhiteView.addSubview(kartuIdentitasTextField)
        UIHelper.makeTetxField(textField: kartuIdentitasTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: kartuIdentitasLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: kartuIdentitasTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Nomor identitas", kerning: 0.8)
        kartuIdentitasTextField.isEnabled = false
        profileWhiteView.addSubview(editKartuIdentitasButton)
        editKartuIdentitasButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editKartuIdentitasButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editKartuIdentitasButton.topAnchor.constraint(equalTo: kartuIdentitasTextField.bottomAnchor, constant: -15),
            editKartuIdentitasButton.widthAnchor.constraint(equalToConstant: 14),
            editKartuIdentitasButton.heightAnchor.constraint(equalToConstant: 14)
        ])
        editKartuIdentitasButton.setImage(UIImage(named: "editIcon"), for: .normal)
        
        profileWhiteView.addSubview(lineKartuIdentitas)
        UIHelper.makeView(view: lineKartuIdentitas, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: kartuIdentitasTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineKartuIdentitas.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)


        profileWhiteView.addSubview(alamatLabel)
        UIHelper.makeLabel(label: alamatLabel, corner: 0, allignment: .left, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: lineKartuIdentitas.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 14, heightAnchor: 12, widthAnchor: 0)
        alamatLabel.text = "Alamat"
        UIHelper.setTextLabel(label: alamatLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.5), weight: .regular, fontSize: 12, text: "Alamat", kerning: 0)

        profileWhiteView.addSubview(alamatTextField)
        UIHelper.makeTetxField(textField: alamatTextField, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: alamatLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: alamatTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .bold, fontSize: 16, text: "Alamat", kerning: 0.8)

        profileWhiteView.addSubview(editAlamatButton)
        editAlamatButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editAlamatButton.trailingAnchor.constraint(equalTo: profileWhiteView.trailingAnchor, constant: -40),
            editAlamatButton.topAnchor.constraint(equalTo: alamatTextField.bottomAnchor, constant: -15),
            editAlamatButton.widthAnchor.constraint(equalToConstant: 14),
            editAlamatButton.heightAnchor.constraint(equalToConstant: 14)
        ])
        editAlamatButton.setImage(UIImage(named: "editIcon"), for: .normal)

        profileWhiteView.addSubview(lineAlamat)
        UIHelper.makeView(view: lineAlamat, leadingAnchor: profileWhiteView.leadingAnchor, trailingAnchor: profileWhiteView.trailingAnchor, topAnchor: alamatTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 6, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineAlamat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
    }
    
    
    func setupNavBar(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
       let backItem = UIBarButtonItem()
          backItem.title = "PROFILE"
          let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
          backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
          navigationItem.leftBarButtonItems = [customButtonNav, backItem]
        
              
        }
        @objc func backButtonTapped() {
          navigationController?.popViewController(animated: true)
        }
    
}
