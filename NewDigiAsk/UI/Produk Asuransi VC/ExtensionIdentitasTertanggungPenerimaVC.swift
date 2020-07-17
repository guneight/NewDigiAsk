//
//  ExtensionIdentitasTertanggungPenerimaVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 27/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension IdentitasTertanggungdanPenerimaManfaatViewController: UITextFieldDelegate {
    
    func pickerDateWaktuPolis(){
        datePicker.datePickerMode = .date
        let  dateToolbar = UIToolbar()
        dateToolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donePickerView));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        dateToolbar.setItems([spaceButton,doneButton,], animated: false)
        waktuTextField.inputAccessoryView = dateToolbar
        waktuTextField.inputView = datePicker
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        waktuTextField.text = formatter.string(from: datePicker.date)
        
    }
    
    @objc func donePickerView(){
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        waktuTextField.text = formatter.string(from: datePicker.date)
        
        self.view.endEditing(true)
    }
    
    @objc func closeDatePicker(){
        view.endEditing(true)
    }
    
    
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
        produkImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        produkImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        produkImage.image = UIImage(named: "produkIcon")
        produkImage.contentMode = .center
        produkImage.layer.masksToBounds = true
        produkImage.layer.cornerRadius = 17
        produkImage.layer.borderWidth = 1
        
        
        prosesStackView.addArrangedSubview(tertanggungImage)
        tertanggungImage.translatesAutoresizingMaskIntoConstraints = false
        tertanggungImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        tertanggungImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        tertanggungImage.layer.masksToBounds = true
        tertanggungImage.layer.cornerRadius = 17
        tertanggungImage.image = UIImage(named: "profileIconWhite")
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
        
        produkBaseView.addSubview(identitasbaseView)
        UIHelper.makeView(view: identitasbaseView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height, widthAnchor: 0)
        identitasbaseView.backgroundColor = .white
        identitasbaseView.addSubview(identitasScrollView)
        identitasScrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            identitasScrollView.leadingAnchor.constraint(equalTo: identitasbaseView.leadingAnchor),
            identitasScrollView.trailingAnchor.constraint(equalTo: identitasbaseView.trailingAnchor),
            identitasScrollView.topAnchor.constraint(equalTo: identitasbaseView.topAnchor),
            identitasScrollView.heightAnchor.constraint(equalToConstant: height)
        ])
        identitasScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        identitasScrollView.isScrollEnabled = true
        identitasScrollView.showsVerticalScrollIndicator = false
        identitasScrollView.layoutIfNeeded()
        
        identitasScrollView.addSubview(identitasContainerView)
        identitasContainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            identitasContainerView.leadingAnchor.constraint(equalTo: identitasScrollView.leadingAnchor),
            identitasContainerView.trailingAnchor.constraint(equalTo: identitasScrollView.trailingAnchor),
            identitasContainerView.topAnchor.constraint(equalTo: identitasScrollView.topAnchor),
            identitasContainerView.bottomAnchor.constraint(equalTo: identitasScrollView.bottomAnchor),
            identitasContainerView.heightAnchor.constraint(equalToConstant: 1300),
            identitasContainerView.widthAnchor.constraint(equalTo: identitasScrollView.widthAnchor)
        ])
        let heightConstraint = identitasContainerView.heightAnchor.constraint(equalTo: identitasScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        identitasContainerView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        identitasContainerView.addSubview(headerIdentitasTertanggung)
        UIHelper.makeLabel(label: headerIdentitasTertanggung, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: identitasContainerView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, heightAnchor: 50, widthAnchor: 0)
        headerIdentitasTertanggung.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        UIHelper.setTextLabel(label: headerIdentitasTertanggung, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "     IDENTITAS TERTANGGUNG", kerning: 0.5)
        
        
        identitasContainerView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: headerIdentitasTertanggung.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaLengkapLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Nama Lengkap", kerning: 0.5)
        
        namaLengkapTextField.addTarget(self, action: #selector(checkTextfield), for: .editingChanged)
        
        identitasContainerView.addSubview(namaLengkapTextField)
        UIHelper.makeTetxField(textField: namaLengkapTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        namaLengkapTextField.placeholder = "Nama lengkap"
        
        identitasContainerView.addSubview(underLineNamaLengkap)
        UIHelper.makeView(view: underLineNamaLengkap, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineNamaLengkap.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(nomorKTPLabel)
        UIHelper.makeLabel(label: nomorKTPLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineNamaLengkap.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKTPLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
        
        identitasContainerView.addSubview(nomorKTPTextField)
        UIHelper.makeTetxField(textField: nomorKTPTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nomorKTPTextField.placeholder = "Nomor KTP"
        
        identitasContainerView.addSubview(underLineKTP)
        UIHelper.makeView(view: underLineKTP, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineKTP.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(emailLabel)
        UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineKTP.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: emailLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Email", kerning: 0.5)
        
        identitasContainerView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        emailTextField.placeholder = "Email"
        
        identitasContainerView.addSubview(underLineEmail)
        UIHelper.makeView(view: underLineEmail, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(nomorTeleponLabel)
        UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineEmail.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorTeleponLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor Telepon", kerning: 0.5)
        
        identitasContainerView.addSubview(nomorTeleponTextField)
        UIHelper.makeTetxField(textField: nomorTeleponTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorTeleponLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nomorTeleponTextField.placeholder = "Telepon"
        
        identitasContainerView.addSubview(underLineTelepon)
        UIHelper.makeView(view: underLineTelepon, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorTeleponTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineTelepon.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        
        identitasContainerView.addSubview(identitasPenerimaManfaatLabel)
        UIHelper.makeLabel(label: identitasPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineTelepon.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 25, heightAnchor: 50, widthAnchor: 0)
        identitasPenerimaManfaatLabel.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        UIHelper.setTextLabel(label: identitasPenerimaManfaatLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "     IDENTITAS PENERIMA MANFAAT", kerning: 0.5)
        
        identitasContainerView.addSubview(namaLengkapPenerimaManfaatLabel)
        UIHelper.makeLabel(label: namaLengkapPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: identitasPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaLengkapPenerimaManfaatLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Nama lengkap", kerning: 0.5)
        namaLengkapPenerimaManfaatTextField.addTarget(self, action: #selector(checkTextfield), for: .editingChanged)
        
        identitasContainerView.addSubview(namaLengkapPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: namaLengkapPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        namaLengkapPenerimaManfaatTextField.placeholder = "Nama lengkap"
        
        identitasContainerView.addSubview(underLinenamaLengkapPenerimaManfaat)
        UIHelper.makeView(view: underLinenamaLengkapPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLinenamaLengkapPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(nomorKTPPenerimaManfaatLabel)
        UIHelper.makeLabel(label: nomorKTPPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: underLinenamaLengkapPenerimaManfaat.trailingAnchor, topAnchor: underLinenamaLengkapPenerimaManfaat.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKTPPenerimaManfaatLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
        
        identitasContainerView.addSubview(nomorKTPPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: nomorKTPPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nomorKTPPenerimaManfaatTextField.placeholder = "Nomor KTP"
        
        identitasContainerView.addSubview(underLinenomorKTPPenerimaManfaat)
        UIHelper.makeView(view: underLinenomorKTPPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLinenomorKTPPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(emailPenerimaManfaatLabel)
        UIHelper.makeLabel(label: emailPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor:    identitasContainerView.leadingAnchor, trailingAnchor: underLinenomorKTPPenerimaManfaat.trailingAnchor, topAnchor: underLinenomorKTPPenerimaManfaat.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: emailPenerimaManfaatLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Email", kerning: 0.5)
        
        identitasContainerView.addSubview(emailPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: emailPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        emailPenerimaManfaatTextField.placeholder = "email"
        
        identitasContainerView.addSubview(underLineEmailPenerimaManfaat)
        UIHelper.makeView(view: underLineEmailPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineEmailPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(nohpPenerimaManfaatLabel)
        UIHelper.makeLabel(label: nohpPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor:    identitasContainerView.leadingAnchor, trailingAnchor: underLineEmailPenerimaManfaat.trailingAnchor, topAnchor: underLineEmailPenerimaManfaat.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: nohpPenerimaManfaatLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor telepon", kerning: 0.5)
        
        identitasContainerView.addSubview(nohpPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: nohpPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nohpPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nohpPenerimaManfaatTextField.placeholder = "Nomor Telepon"
        
        identitasContainerView.addSubview(underLinenoHpPenerimaManfaat)
        UIHelper.makeView(view: underLinenoHpPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nohpPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLinenoHpPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(masakAktifLabel)
        UIHelper.makeLabel(label: masakAktifLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLinenoHpPenerimaManfaat.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 25, heightAnchor: 50, widthAnchor: 0)
        masakAktifLabel.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        UIHelper.setTextLabel(label: masakAktifLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "     MASA AKTIF", kerning: 0.5)
        
        identitasContainerView.addSubview(pilihWaktuAktifPolisLabel)
        UIHelper.makeLabel(label: pilihWaktuAktifPolisLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: masakAktifLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihWaktuAktifPolisLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Pilih waktu aktif Polis", kerning: 0.5)
        
        identitasContainerView.addSubview(waktuTextField)
        UIHelper.makeTetxField(textField: waktuTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: pilihWaktuAktifPolisLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        waktuTextField.placeholder = "DD/MM/YYYY"
        
        identitasContainerView.addSubview(underLineWaktu)
        UIHelper.makeView(view: underLineWaktu, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: waktuTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineWaktu.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(tambahKerajangbutton)
        UIHelper.makeButton(button: tambahKerajangbutton, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineWaktu.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 25, corner: 24, heightAnchor: 48, widthAnchor: 0)
        tambahKerajangbutton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        tambahKerajangbutton.setTitle("TAMBAH KE KERANJANG", for: .normal)
        
        // form identitas tertanggung
        namaLengkapTextField.delegate = self
        nomorKTPTextField.delegate = self
        emailTextField.delegate = self
        nomorTeleponTextField.delegate = self
        namaLengkapTextField.becomeFirstResponder()
        namaLengkapTextField.returnKeyType = .next
        nomorKTPTextField.keyboardType = .namePhonePad
        nomorKTPTextField.returnKeyType = .next
        emailTextField.returnKeyType = .next
        nomorTeleponTextField.keyboardType = .numberPad
        
        
        identitasContainerView.addSubview(IdentitasTertanggungTableView)
        IdentitasTertanggungTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            IdentitasTertanggungTableView.leadingAnchor.constraint(equalTo: identitasContainerView.leadingAnchor, constant: 20),
            IdentitasTertanggungTableView.trailingAnchor.constraint(equalTo: identitasContainerView.trailingAnchor, constant: -20),
            IdentitasTertanggungTableView.topAnchor.constraint(equalTo: underLineNamaLengkap.bottomAnchor),
            IdentitasTertanggungTableView.bottomAnchor.constraint(equalTo: identitasPenerimaManfaatLabel.topAnchor)
        ])
        
        IdentitasTertanggungTableView.backgroundColor = .clear
        IdentitasTertanggungTableView.separatorStyle = .none
        IdentitasTertanggungTableView.allowsSelection = true
        IdentitasTertanggungTableView.showsVerticalScrollIndicator = false
        IdentitasTertanggungTableView.layer.masksToBounds = true
        IdentitasTertanggungTableView.layer.cornerRadius = 10
        IdentitasTertanggungTableView.register(IdentitastertanggungTbc.self, forCellReuseIdentifier: "IdentitastertanggungTbc")
        
        identitasContainerView.addSubview(penerimaManfaatTableView)
        penerimaManfaatTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            penerimaManfaatTableView.leadingAnchor.constraint(equalTo: identitasContainerView.leadingAnchor, constant: 20),
            penerimaManfaatTableView.trailingAnchor.constraint(equalTo: identitasContainerView.trailingAnchor, constant: -20),
            penerimaManfaatTableView.topAnchor.constraint(equalTo: underLinenamaLengkapPenerimaManfaat.bottomAnchor),
            penerimaManfaatTableView.bottomAnchor.constraint(equalTo: masakAktifLabel.topAnchor)
        ])
        
        penerimaManfaatTableView.backgroundColor = .clear
        penerimaManfaatTableView.separatorStyle = .none
        penerimaManfaatTableView.allowsSelection = true
        penerimaManfaatTableView.showsVerticalScrollIndicator = false
        penerimaManfaatTableView.layer.masksToBounds = true
        penerimaManfaatTableView.layer.cornerRadius = 10
        penerimaManfaatTableView.register(penerimaManfaatTbc.self, forCellReuseIdentifier: "penerimaManfaatTbc")
        penerimaManfaatTableView.isHidden = true
        
        if penerimaManfaat?.daftarTertanggung.count == 0{
            IdentitasTertanggungTableView.isHidden = true
        }else{
            IdentitasTertanggungTableView.isHidden = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == namaLengkapTextField {
            nomorKTPTextField.becomeFirstResponder()
        }else if textField == nomorKTPTextField{
            emailTextField.becomeFirstResponder()
        }else if textField == emailTextField {
            nomorTeleponTextField.becomeFirstResponder()
        }else if textField == nomorTeleponTextField{
            namaLengkapPenerimaManfaatTextField.becomeFirstResponder()
        }else if textField == nomorKTPPenerimaManfaatTextField{
            nomorKTPPenerimaManfaatTextField.becomeFirstResponder()
        }else if textField == nomorKTPPenerimaManfaatTextField{
            emailPenerimaManfaatTextField.becomeFirstResponder()
        }else if textField == emailPenerimaManfaatTextField{
            nohpPenerimaManfaatLabel.becomeFirstResponder()
        }
        return true
    }
    
    @objc func checkTextfield(_ textField: UITextField){
        if textField == namaLengkapTextField {
            if namaLengkapTextField.text?.isEmpty == true {
                IdentitasTertanggungTableView.isHidden = true
            }else{
                IdentitasTertanggungTableView.isHidden = false
            }
        }else if textField == namaLengkapPenerimaManfaatTextField{
            if namaLengkapPenerimaManfaatTextField.text?.isEmpty == true {
                penerimaManfaatTableView.isHidden = true
            }else{
                penerimaManfaatTableView.isHidden = false
                penerimaManfaatTableView.reloadData()
            }
        }
    }
    
    func setupNavBarIdentitas(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "SYARAT DAN KETENTUAN", kerning: 0)
        navigationItem.titleView = titleLabel
        
    }
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    
}

class IdentitastertanggungTbc: UITableViewCell{
    let namaIdentitasTertanggunglabel = UILabel()
    var cellAction : (()-> Void)?
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(namaIdentitasTertanggunglabel)
        UIHelper.makeLabel(label: namaIdentitasTertanggunglabel, corner: 0, allignment: .left, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, heightAnchor: 35, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaIdentitasTertanggunglabel, fontName: fontNameHelper.ArialMT, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 14, text: "Tertanggung-1", kerning: 0.5)
        namaIdentitasTertanggunglabel.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(namaAction))
        
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 34, width: contentView.frame.size.width, height: 1)
        bottomLayer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        namaIdentitasTertanggunglabel.layer.addSublayer(bottomLayer)
        
        namaIdentitasTertanggunglabel.addGestureRecognizer(gesture)
    }
    
    
    @objc func namaAction(){
        cellAction?()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class penerimaManfaatTbc: UITableViewCell{
    let namaIdentitasTertanggunglabel = UILabel()
    var cellAction : (()-> Void)?
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(namaIdentitasTertanggunglabel)
        
        UIHelper.makeLabel(label: namaIdentitasTertanggunglabel, corner: 0, allignment: .left, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 0, heightAnchor: 35, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaIdentitasTertanggunglabel, fontName: fontNameHelper.ArialMT, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 14, text: "Tertanggung-1", kerning: 0.5)
        namaIdentitasTertanggunglabel.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(namaAction))
        
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 34, width: contentView.frame.size.width, height: 1)
        bottomLayer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        namaIdentitasTertanggunglabel.layer.addSublayer(bottomLayer)
        
        namaIdentitasTertanggunglabel.addGestureRecognizer(gesture)
        
        
    }
    @objc func namaAction(){
        cellAction?()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
