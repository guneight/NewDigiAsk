//
//  ExtensionSubmitKlaimVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension SubmitKlaimViewController{
    func setupUISubmitKlaim(){
        view.backgroundColor = .white
        view.addSubview(submitKlaimView)
        submitKlaimView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            submitKlaimView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            submitKlaimView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            submitKlaimView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            submitKlaimView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        submitKlaimView.addSubview(dataPolisView)
        UIHelper.makeView(view: dataPolisView, leadingAnchor: submitKlaimView.leadingAnchor, trailingAnchor: submitKlaimView.trailingAnchor, topAnchor: submitKlaimView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 25, corner: 10, heightAnchor: 150, widthAnchor: 0)
        dataPolisView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        dataPolisView.layer.borderWidth = 1
        
        dataPolisView.addSubview(headerNomorPolisLabel)
        UIHelper.makeLabel(label: headerNomorPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: dataPolisView.topAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNomorPolisLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Polis", kerning: 0.5)
        
        dataPolisView.addSubview(nomorPolisLabel)
        UIHelper.makeLabel(label: nomorPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerNomorPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorPolisLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.5)
        
        dataPolisView.addSubview(lineNomorPolis)
        UIHelper.makeLabel(label: lineNomorPolis, corner: 0, allignment: .center, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: nomorPolisLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, heightAnchor: 1, widthAnchor: 0)
        lineNomorPolis.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        dataPolisView.addSubview(headerStatusPolisLabel)
        UIHelper.makeLabel(label: headerStatusPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: nomorPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerStatusPolisLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Status polis", kerning: 0.5)
        
        dataPolisView.addSubview(statusPolisLabel)
        UIHelper.makeLabel(label: statusPolisLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerStatusPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: statusPolisLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.5)
        
        dataPolisView.addSubview(laniStatusPolis)
        UIHelper.makeLabel(label: laniStatusPolis, corner: 0, allignment: .center, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: statusPolisLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, heightAnchor: 1, widthAnchor: 0)
        laniStatusPolis.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        dataPolisView.addSubview(headerMasaBerlakuLabel)
        UIHelper.makeLabel(label: headerMasaBerlakuLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: statusPolisLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerMasaBerlakuLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Masa berlaku", kerning: 0.5)
        
        dataPolisView.addSubview(masaBerlakuLabel)
        UIHelper.makeLabel(label: masaBerlakuLabel, corner: 0, allignment: .left, leadingAnchor: dataPolisView.leadingAnchor, trailingAnchor: dataPolisView.trailingAnchor, topAnchor: headerMasaBerlakuLabel.bottomAnchor, leadingConstant: 17, trailingConstant: -17, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: masaBerlakuLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Jumat, 1 nov 2019, 00.00 wib", kerning: 0.5)
        
        submitKlaimView.addSubview(manfaatView)
        UIHelper.makeView(view: manfaatView, leadingAnchor: submitKlaimView.leadingAnchor, trailingAnchor: submitKlaimView.trailingAnchor, topAnchor: dataPolisView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, corner: 10, heightAnchor: 71, widthAnchor: 0)
        manfaatView.layer.borderWidth = 1
        manfaatView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        manfaatView.addSubview(pilihManfaatLabel)
        UIHelper.makeLabel(label: pilihManfaatLabel, corner: 0, allignment: .center, leadingAnchor: manfaatView.leadingAnchor, trailingAnchor: manfaatView.trailingAnchor, topAnchor: manfaatView.topAnchor, leadingConstant: 70, trailingConstant: -70, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihManfaatLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "PILIH MANFAAT", kerning: 0.5)
        
        manfaatView.addSubview(linepilihManfaat)
        UIHelper.makeView(view: linepilihManfaat, leadingAnchor: manfaatView.leadingAnchor, trailingAnchor: manfaatView.trailingAnchor, topAnchor: pilihManfaatLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6.5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        linepilihManfaat.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        manfaatView.addSubview(manfaatlabel)
        UIHelper.makeSmalllabel(smallLabel: manfaatlabel, leadingAnchor: manfaatView.leadingAnchor, topAnchor: linepilihManfaat.bottomAnchor, leadingConstant: 17, topConstant: 10, corner: 0, heightAnchor: 16, widthtAnchor: manfaatView.frame.size.width/2)
        UIHelper.setTextLabel(label: manfaatlabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Meninggal", kerning: 0.5)
        
        submitKlaimView.addSubview(dokumentKlaimView)
        UIHelper.makeView(view: dokumentKlaimView, leadingAnchor: submitKlaimView.leadingAnchor, trailingAnchor: submitKlaimView.trailingAnchor, topAnchor: manfaatView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 10, heightAnchor: 150, widthAnchor: 0)
        dokumentKlaimView.layer.borderWidth = 1
        dokumentKlaimView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        dokumentKlaimView.addSubview(dokumenKlaimLabel)
        UIHelper.makeLabel(label: dokumenKlaimLabel, corner: 0, allignment: .center, leadingAnchor: dokumentKlaimView.leadingAnchor, trailingAnchor: dokumentKlaimView.trailingAnchor, topAnchor: dokumentKlaimView.topAnchor, leadingConstant: 80, trailingConstant: -80, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: dokumenKlaimLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "DOKUMEN KLAIM", kerning: 0.12)
        
        dokumentKlaimView.addSubview(lineDokumenKlaim)
        UIHelper.makeLabel(label: lineDokumenKlaim, corner: 0, allignment: .center, leadingAnchor: dokumentKlaimView.leadingAnchor, trailingAnchor: dokumentKlaimView.trailingAnchor, topAnchor: dokumenKlaimLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6, heightAnchor: 1, widthAnchor: 0)
        lineDokumenKlaim.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        
        
        
        dokumentKlaimView.addSubview(suratBuktiImage)
        suratBuktiImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            suratBuktiImage.topAnchor.constraint(equalTo: lineDokumenKlaim.bottomAnchor, constant: 10),
            suratBuktiImage.widthAnchor.constraint(equalToConstant: 90),
            suratBuktiImage.heightAnchor.constraint(equalToConstant: 90),
            suratBuktiImage.centerXAnchor.constraint(equalTo: dokumentKlaimView.centerXAnchor)
        ])
        suratBuktiImage.layer.masksToBounds = true
        suratBuktiImage.layer.cornerRadius = 5
        suratBuktiImage.layer.borderWidth = 0.5
        suratBuktiImage.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        dokumentKlaimView.addSubview(ktpImage)
        ktpImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ktpImage.topAnchor.constraint(equalTo: lineDokumenKlaim.bottomAnchor, constant: 10),
            ktpImage.widthAnchor.constraint(equalToConstant: 90),
            ktpImage.heightAnchor.constraint(equalToConstant: 90),
            ktpImage.trailingAnchor.constraint(equalTo: suratBuktiImage.leadingAnchor, constant: -10)
        ])
        ktpImage.layer.masksToBounds = true
        ktpImage.layer.cornerRadius = 5
        ktpImage.layer.borderWidth = 0.5
        ktpImage.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        
        dokumentKlaimView.addSubview(kartuKeluargaImage)
        kartuKeluargaImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kartuKeluargaImage.topAnchor.constraint(equalTo: lineDokumenKlaim.bottomAnchor, constant: 10),
            kartuKeluargaImage.widthAnchor.constraint(equalToConstant: 90),
            kartuKeluargaImage.heightAnchor.constraint(equalToConstant: 90),
            kartuKeluargaImage.leadingAnchor.constraint(equalTo: suratBuktiImage.trailingAnchor, constant: 10)
        ])
        kartuKeluargaImage.layer.masksToBounds = true
        kartuKeluargaImage.layer.cornerRadius = 5
        kartuKeluargaImage.layer.borderWidth = 0.5
        kartuKeluargaImage.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        submitKlaimView.addSubview(klaimButton)
        klaimButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimButton.leadingAnchor.constraint(equalTo: submitKlaimView.leadingAnchor, constant: 24),
            klaimButton.trailingAnchor.constraint(equalTo: submitKlaimView.trailingAnchor, constant: -24),
            klaimButton.bottomAnchor.constraint(equalTo: submitKlaimView.bottomAnchor, constant: -23),
            klaimButton.heightAnchor.constraint(equalToConstant: 48)
        ])
        klaimButton.layer.masksToBounds = true
        klaimButton.layer.cornerRadius = 24
        klaimButton.setTitle("KLAIM", for: .normal)
        klaimButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        klaimButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
    }
    
    func setupNavBar(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "KARTU KELUARGA", kerning: 0)
        navigationItem.titleView = titleLabel
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
