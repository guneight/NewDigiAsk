//
//  ExtensionSuratBuktiKematianVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension SuratBuktiKematianViewController : UIImagePickerControllerDelegate , UINavigationControllerDelegate{
    func ambilFotoSuratBukti() {
        cameraIconImage.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(openCamera(gesture:)))
        cameraIconImage.addGestureRecognizer(tapGesture)
        
        
    }
    
    @objc func openCamera(gesture : UITapGestureRecognizer){
        let imgPicker = UIImagePickerController()
        imgPicker.delegate = self
        imgPicker.sourceType = .camera
        imgPicker.allowsEditing = false
        imgPicker.showsCameraControls = true
        self.present(imgPicker, animated: true, completion: nil)
        print("presss")
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey :
        Any]) {
        if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            cameraIconImage.image = resizeImage(image: img, newHeight: 192)
            cameraIconImage.contentMode = .center
            self.dismiss(animated: true, completion: nil)
        } else {
            print("error")
        }
        
        
    }
    
    func resizeImage(image: UIImage, newHeight: CGFloat) -> UIImage {
        let width = image.size.width
        let scale = newHeight / image.size.height
        let newHeight = image.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: width, height: newHeight))
        image.draw(in: CGRect(x: 0, y: 0, width: width, height: newHeight))
        guard let newImage = UIGraphicsGetImageFromCurrentImageContext()else {
            return image
        }
        UIGraphicsEndImageContext()
        return newImage
    }
    func setupUISuratBuktiKematian(){
        view.backgroundColor = .white
        view.addSubview(suratKematianView)
        suratKematianView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            suratKematianView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            suratKematianView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            suratKematianView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            suratKematianView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        suratKematianView.addSubview(datadiSiapkan)
        UIHelper.makeLabel(label: datadiSiapkan, corner: 0, allignment: .center, leadingAnchor: suratKematianView.leadingAnchor, trailingAnchor: suratKematianView.trailingAnchor, topAnchor: suratKematianView.topAnchor, leadingConstant: 70, trailingConstant: -70, topConstant: 26, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: datadiSiapkan, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "DATA YANG HARUS DISIAPKAN", kerning: 0.6)
        
        suratKematianView.addSubview(suratBuktiKetianLabel)
        UIHelper.makeLabel(label: suratBuktiKetianLabel, corner: 0, allignment: .left, leadingAnchor: suratKematianView.leadingAnchor, trailingAnchor: suratKematianView.trailingAnchor, topAnchor: datadiSiapkan.bottomAnchor, leadingConstant: 23, trailingConstant: -23, topConstant: 13, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: suratBuktiKetianLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "2 - Surat Bukti Kematian", kerning: 0.12)
        
        suratKematianView.addSubview(deskripsiSuratKematianLabel)
        UIHelper.makeLabel(label: deskripsiSuratKematianLabel, corner: 0, allignment: .left, leadingAnchor: suratKematianView.leadingAnchor, trailingAnchor: suratKematianView.trailingAnchor, topAnchor: suratBuktiKetianLabel.bottomAnchor, leadingConstant: 42, trailingConstant: -30, topConstant: 5, heightAnchor: 47, widthAnchor: 0)
        
        UIHelper.setTextLabel(label: deskripsiSuratKematianLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Lengkapi syarat syarat yang diperlukan untuk proses klaim yang Anda ajukan. untuk keterangan lebih jelas bisa hubungi Customer Services Kami.", kerning: 0.06)
        deskripsiSuratKematianLabel.numberOfLines = 0
        
        suratKematianView.addSubview(cameraIconImage)
        UIHelper.makeImageView(imageView: cameraIconImage, leadingAnchor: suratKematianView.leadingAnchor, topAnchor: deskripsiSuratKematianLabel.bottomAnchor, leadingConstant: 21, topConstant: 25, corner: 10, heightAnchor: 192)
        cameraIconImage.trailingAnchor.constraint(equalTo: suratKematianView.trailingAnchor, constant: -21).isActive = true
        cameraIconImage.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        cameraIconImage.layer.borderWidth = 1
        cameraIconImage.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        cameraIconImage.image = UIImage(named: "camera")
        cameraIconImage.contentMode = .center
        
        suratKematianView.addSubview(keteranganFoto)
        UIHelper.makeLabel(label: keteranganFoto, corner: 0, allignment: .center, leadingAnchor: suratKematianView.leadingAnchor, trailingAnchor: suratKematianView.trailingAnchor, topAnchor: cameraIconImage.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: keteranganFoto, fontName:fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.6470588235, green: 0.6274509804, blue: 0.6274509804, alpha: 1), weight: .bold, fontSize: 10, text: "Foto KTP ataupun Bukti Identitas lainnya dari Ahli Waris", kerning: 0)
        
        suratKematianView.addSubview(lanjutButton)
        lanjutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lanjutButton.leadingAnchor.constraint(equalTo: suratKematianView.leadingAnchor, constant: 24),
            lanjutButton.trailingAnchor.constraint(equalTo: suratKematianView.trailingAnchor, constant: -24),
            lanjutButton.bottomAnchor.constraint(equalTo: suratKematianView.bottomAnchor, constant: -23),
            lanjutButton.heightAnchor.constraint(equalToConstant: 48)
        ])
        lanjutButton.layer.masksToBounds = true
        lanjutButton.layer.borderColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        lanjutButton.layer.borderWidth = 1
        lanjutButton.layer.cornerRadius = 24
        lanjutButton.setTitle("LANJUT", for: .normal)
        lanjutButton.setTitleColor(#colorLiteral(red: 0.6470588235, green: 0.6274509804, blue: 0.6274509804, alpha: 1), for: .normal)
        
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
        UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "KTP", kerning: 0)
        navigationItem.titleView = titleLabel
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
