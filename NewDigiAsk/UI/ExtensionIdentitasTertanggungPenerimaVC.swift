//
//  ExtensionIdentitasTertanggungPenerimaVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 27/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension IdentitasTertanggungdanPenerimaManfaatViewController {
    
    func setupUI(){
    let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
    gesture.direction = .down
    let height = view.frame.size.height
     view.backgroundColor = .clear
    view.addSubview(identitasScrollView)
           identitasScrollView.translatesAutoresizingMaskIntoConstraints = false
                   NSLayoutConstraint.activate([
           identitasScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
           identitasScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
           identitasScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
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
        identitasContainerView.heightAnchor.constraint(equalToConstant: 1100),
        identitasContainerView.widthAnchor.constraint(equalTo: identitasScrollView.widthAnchor)
              ])
          let heightConstraint = identitasContainerView.heightAnchor.constraint(equalTo: identitasScrollView.heightAnchor)
          heightConstraint.priority = UILayoutPriority(rawValue: 250)
          heightConstraint.isActive = true
          identitasContainerView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
        identitasContainerView.addSubview(headerIdentitasTertanggung)
        UIHelper.makeLabel(label: headerIdentitasTertanggung, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: identitasContainerView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, heightAnchor: 50, widthAnchor: 0)
        headerIdentitasTertanggung.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        headerIdentitasTertanggung.text = "IDENTITAS TERTANGGUNG"
        
        identitasContainerView.addSubview(namaLengkapLabel)
        UIHelper.makeLabel(label: namaLengkapLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: headerIdentitasTertanggung.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        namaLengkapLabel.text = "NAMA LENGKAP"

        identitasContainerView.addSubview(namaLengkapTextField)
        UIHelper.makeTetxField(textField: namaLengkapTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        namaLengkapTextField.placeholder = "Nama lengkap"

        identitasContainerView.addSubview(underLineNamaLengkap)
        UIHelper.makeView(view: underLineNamaLengkap, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineNamaLengkap.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)

        identitasContainerView.addSubview(nomorKTPLabel)
        UIHelper.makeLabel(label: nomorKTPLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineNamaLengkap.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        nomorKTPLabel.text = "Nomor KTP"

        identitasContainerView.addSubview(nomorKTPTextField)
        UIHelper.makeTetxField(textField: nomorKTPTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nomorKTPTextField.placeholder = "Nomor KTP"

        identitasContainerView.addSubview(underLineKTP)
        UIHelper.makeView(view: underLineKTP, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineKTP.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(emailLabel)
        UIHelper.makeLabel(label: emailLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineKTP.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        emailLabel.text = "Email"

        identitasContainerView.addSubview(emailTextField)
        UIHelper.makeTetxField(textField: emailTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        emailTextField.placeholder = "Email"

        identitasContainerView.addSubview(underLineEmail)
        UIHelper.makeView(view: underLineEmail, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineEmail.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(nomorTeleponLabel)
        UIHelper.makeLabel(label: nomorTeleponLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineEmail.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 14, widthAnchor: 0)
        nomorTeleponLabel.text = "Telepon"

        identitasContainerView.addSubview(nomorTeleponTextField)
        UIHelper.makeTetxField(textField: nomorTeleponTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorTeleponLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nomorTeleponTextField.placeholder = "Telepon"

        identitasContainerView.addSubview(underLineTelepon)
        UIHelper.makeView(view: underLineTelepon, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorTeleponTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineTelepon.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
               
        
        identitasContainerView.addSubview(identitasPenerimaManfaatLabel)
        UIHelper.makeLabel(label: identitasPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLineTelepon.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 25, heightAnchor: 50, widthAnchor: 0)
        identitasPenerimaManfaatLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        identitasPenerimaManfaatLabel.text = "IDENTITAS PENERIMA MANFAAT"
        
        identitasContainerView.addSubview(namaLengkapPenerimaManfaatLabel)
        UIHelper.makeLabel(label: namaLengkapPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: identitasPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        namaLengkapPenerimaManfaatLabel.text = "Nama Lengkap"

        identitasContainerView.addSubview(namaLengkapPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: namaLengkapPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        namaLengkapPenerimaManfaatTextField.placeholder = "Nama lengkap"

        identitasContainerView.addSubview(underLinenamaLengkapPenerimaManfaat)
        UIHelper.makeView(view: underLinenamaLengkapPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: namaLengkapPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLinenamaLengkapPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)

        identitasContainerView.addSubview(nomorKTPPenerimaManfaatLabel)
        UIHelper.makeLabel(label: nomorKTPPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: underLinenamaLengkapPenerimaManfaat.trailingAnchor, topAnchor: underLinenamaLengkapPenerimaManfaat.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        nomorKTPPenerimaManfaatLabel.text = "Nomor KTP"

        identitasContainerView.addSubview(nomorKTPPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: nomorKTPPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nomorKTPPenerimaManfaatTextField.placeholder = "Nomor KTP"

        identitasContainerView.addSubview(underLinenomorKTPPenerimaManfaat)
        UIHelper.makeView(view: underLinenomorKTPPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nomorKTPPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLinenomorKTPPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(emailPenerimaManfaatLabel)
        UIHelper.makeLabel(label: emailPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor:    identitasContainerView.leadingAnchor, trailingAnchor: underLinenomorKTPPenerimaManfaat.trailingAnchor, topAnchor: underLinenomorKTPPenerimaManfaat.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        emailPenerimaManfaatLabel.text = "Email"

        identitasContainerView.addSubview(emailPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: emailPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        emailPenerimaManfaatTextField.placeholder = "email"

        identitasContainerView.addSubview(underLineEmailPenerimaManfaat)
               UIHelper.makeView(view: underLineEmailPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: emailPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLineEmailPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(nohpPenerimaManfaatLabel)
        UIHelper.makeLabel(label: nohpPenerimaManfaatLabel, corner: 0, allignment: .left, leadingAnchor:    identitasContainerView.leadingAnchor, trailingAnchor: underLineEmailPenerimaManfaat.trailingAnchor, topAnchor: underLineEmailPenerimaManfaat.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        nohpPenerimaManfaatLabel.text = "Telepon"

        identitasContainerView.addSubview(nohpPenerimaManfaatTextField)
        UIHelper.makeTetxField(textField: nohpPenerimaManfaatTextField, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nohpPenerimaManfaatLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        nohpPenerimaManfaatTextField.placeholder = "Nomor Telepon"

        identitasContainerView.addSubview(underLinenoHpPenerimaManfaat)
               UIHelper.makeView(view: underLinenoHpPenerimaManfaat, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: nohpPenerimaManfaatTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underLinenoHpPenerimaManfaat.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.6584706764)
        
        identitasContainerView.addSubview(masakAktifLabel)
        UIHelper.makeLabel(label: masakAktifLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: underLinenoHpPenerimaManfaat.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 25, heightAnchor: 50, widthAnchor: 0)
        masakAktifLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        masakAktifLabel.text = "MASA AKTIF"
        
        identitasContainerView.addSubview(pilihWaktuAktifPolisLabel)
        UIHelper.makeLabel(label: pilihWaktuAktifPolisLabel, corner: 0, allignment: .left, leadingAnchor: identitasContainerView.leadingAnchor, trailingAnchor: identitasContainerView.trailingAnchor, topAnchor: masakAktifLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 14, widthAnchor: 0)
        pilihWaktuAktifPolisLabel.text = "Pilih waktu aktif polis"

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
        
    }
    
    @objc func swipeDown() {
         self.dismiss(animated: true, completion: nil)
    }
    
    
}
