//
//  ExtensionBayarKartuKreditVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension BayarKartuKreditViewController : UIPickerViewDelegate , UIPickerViewDataSource  {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bulanBayarCicilan.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let bayarCicilanSelected = bulanBayarCicilan[row]
        bayarCicilanTextField.text = "Cicilan - \(bayarCicilanSelected) bulan       Rp \(hargaBayarPerbulan[row])/bulan"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Cicilan -\(bulanBayarCicilan[row]) bulan     Rp \(hargaBayarPerbulan[row])/bulan"
    }
    
    
    func bayarCicilanPicker(){
        
        let cicilan = UIToolbar()
        cicilan.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donePickerView));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        cicilan.setItems([spaceButton,doneButton,], animated: false)
        bayarCicilanTextField.inputAccessoryView = cicilan
        bayarCicilanTextField.inputView = bayarCicilanPickerView
        bayarCicilanTextField.text = "Cicilan"
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(donePickerView))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func donePickerView(){
        self.view.endEditing(true)
    }
    
    func setupUI(){
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
        checkOutImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        checkOutImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        checkOutImage.layer.masksToBounds = true
        checkOutImage.layer.cornerRadius = 17
        checkOutImage.image = UIImage(named: "rpIconWhite")
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
        
        produkBaseView.addSubview(kartuKreditScrollView)
        UIHelper.makeScroolView(scrollView: kartuKreditScrollView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, widthAnchor: 0, scrollAble: true, scrollShow: false)
        kartuKreditScrollView.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor).isActive = true
        
        
        kartuKreditScrollView.addSubview(kartuKreditBaseView)
        kartuKreditBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kartuKreditBaseView.leadingAnchor.constraint(equalTo: kartuKreditScrollView.leadingAnchor),
            kartuKreditBaseView.trailingAnchor.constraint(equalTo: kartuKreditScrollView.trailingAnchor),
            kartuKreditBaseView.topAnchor.constraint(equalTo: kartuKreditScrollView.topAnchor),
            kartuKreditBaseView.bottomAnchor.constraint(equalTo: kartuKreditScrollView.bottomAnchor),
            kartuKreditBaseView.heightAnchor.constraint(equalToConstant: 1000),
            kartuKreditBaseView.widthAnchor.constraint(equalTo: kartuKreditScrollView.widthAnchor)
        ])
        let heightConstraint = kartuKreditBaseView.heightAnchor.constraint(equalTo: kartuKreditScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        kartuKreditBaseView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        kartuKreditBaseView.addSubview(totalPembayaranView)
        UIHelper.makeView(view: totalPembayaranView, leadingAnchor: kartuKreditBaseView.leadingAnchor, trailingAnchor: kartuKreditBaseView.trailingAnchor, topAnchor: kartuKreditBaseView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, corner: 10, heightAnchor: 71, widthAnchor: 0)
        totalPembayaranView.layer.borderWidth = 1
        totalPembayaranView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)

        totalPembayaranView.addSubview(totalPembayaranLabel)
        UIHelper.makeLabel(label: totalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: totalPembayaranLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Total Pembayaran", kerning: 0.5)

        totalPembayaranView.addSubview(nilaiTotalPembayaranLabel)
        UIHelper.makeLabel(label: nilaiTotalPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: totalPembayaranView.leadingAnchor, trailingAnchor: totalPembayaranView.trailingAnchor, topAnchor: totalPembayaranLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiTotalPembayaranLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 14, text: "Rp 3.000.000,-", kerning: 0.12)

        totalPembayaranView.addSubview(rightButtonImage)
        UIHelper.makeImageView(imageView: rightButtonImage, leadingAnchor: totalPembayaranView.trailingAnchor, topAnchor: nilaiTotalPembayaranLabel.topAnchor, leadingConstant: -30, topConstant: 3, corner: 0, heightAnchor: 10)
        rightButtonImage.widthAnchor.constraint(equalToConstant: 6).isActive = true
        rightButtonImage.image = UIImage(named: "next")

        kartuKreditBaseView.addSubview(kartuKreditView)
        UIHelper.makeView(view: kartuKreditView, leadingAnchor: kartuKreditBaseView.leadingAnchor, trailingAnchor: kartuKreditBaseView.trailingAnchor, topAnchor: totalPembayaranView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 11, corner: 10, heightAnchor: 360, widthAnchor: 0)
        kartuKreditView.layer.borderWidth = 1
        kartuKreditView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)

        kartuKreditView.addSubview(kartuKreditDebitLabel)
        UIHelper.makeLabel(label: kartuKreditDebitLabel, corner: 0, allignment: .left, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: kartuKreditView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: kartuKreditDebitLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Kartu Kredit/Debit", kerning: 0.5)

        kartuKreditView.addSubview(underlineKartuKredit)
        UIHelper.makeView(view: underlineKartuKredit, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: kartuKreditDebitLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 7, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineKartuKredit.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.2)

        kartuKreditView.addSubview(masterCardIcon)
        UIHelper.makeImageView(imageView: masterCardIcon, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: underlineKartuKredit.bottomAnchor, leadingConstant: 20, topConstant: 15, corner: 0, heightAnchor: 33)
        masterCardIcon.widthAnchor.constraint(equalToConstant: 80).isActive = true
        masterCardIcon.contentMode = .scaleAspectFit
        masterCardIcon.image = UIImage(named: "masterCardIcon")

        kartuKreditView.addSubview(masterCardLabel)
        UIHelper.makeLabel(label: masterCardLabel, corner: 0, allignment: .right, leadingAnchor: masterCardIcon.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: underlineKartuKredit.bottomAnchor, leadingConstant: 20, trailingConstant: -25, topConstant: 20, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: masterCardLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Master Card", kerning: 0.5)

        kartuKreditView.addSubview(underlineMastercard)
        UIHelper.makeView(view: underlineMastercard, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: masterCardIcon.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 7, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineMastercard.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.2)

        kartuKreditView.addSubview(nomorKartuLabel)
        UIHelper.makeLabel(label: nomorKartuLabel, corner: 0, allignment: .left, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: underlineMastercard.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKartuLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Kartu", kerning: 0.5)

        kartuKreditView.addSubview(nomorKartuTextField)
        UIHelper.makeTetxField(textField: nomorKartuTextField, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: nomorKartuLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 8, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1))
        UIHelper.setTextField(textField: nomorKartuTextField, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 16, text: " ", kerning: 1)
        nomorKartuTextField.placeholder = "1234 7658 8790 7865"
        nomorKartuTextField.keyboardType = .numberPad

        kartuKreditView.addSubview(masaBerlakuLabel)
        UIHelper.makeLabel(label: masaBerlakuLabel, corner: 0, allignment: .left, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: nomorKartuTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: masaBerlakuLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Masa Berlaku", kerning: 0.5)

        kartuKreditView.addSubview(mmTextfield)
        UIHelper.makeSmallTetxField(textField: mmTextfield, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: masaBerlakuLabel.bottomAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 8, corner: 0, widthAnchor: 30, heightAnchor: 20, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        UIHelper.setTextField(textField: mmTextfield, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "", kerning: 0.5)
        mmTextfield.placeholder = "mm"
        mmTextfield.keyboardType = .numberPad

        kartuKreditView.addSubview(yyTextfield)
        UIHelper.makeSmallTetxField(textField: yyTextfield, leadingAnchor: mmTextfield.trailingAnchor, topAnchor: masaBerlakuLabel.bottomAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 8, corner: 0, widthAnchor: 30, heightAnchor: 16, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        UIHelper.setTextField(textField: yyTextfield, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "", kerning: 0.5)
        yyTextfield.placeholder = "yy"
        yyTextfield.keyboardType = .numberPad

        kartuKreditView.addSubview(CVVLabel)
        UIHelper.makeLabel(label: (CVVLabel), corner: 0, allignment: .left, leadingAnchor: kartuKreditView.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: nomorKartuTextField.bottomAnchor, leadingConstant: -65, trailingConstant: -20, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: (CVVLabel), fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "CVV", kerning: 0.5)

        kartuKreditView.addSubview(CVVTextfielsd)
        UIHelper.makeSmallTetxField(textField: CVVTextfielsd, leadingAnchor: kartuKreditView.trailingAnchor, topAnchor: CVVLabel.bottomAnchor, leadingConstant: -70, trailingConstant: 0, topConstant: 8, corner: 0, widthAnchor: 50, heightAnchor: 16, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
        UIHelper.setTextField(textField: CVVTextfielsd, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 16, text: "", kerning: 0.5)
        CVVTextfielsd.placeholder = "CVV"
        CVVTextfielsd.keyboardType = .numberPad

        kartuKreditView.addSubview(simpanNomorKartuButton)
        UIHelper.makeSmallButton(smallButton: simpanNomorKartuButton, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: mmTextfield.bottomAnchor, leadingConstant: 20, topConstant: 20, corner: 3, heightAnchor: 14, widthtAnchor: 14, borderWidth: 1, colorBorder: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1))

        kartuKreditView.addSubview(simpanNomorkartuLabel)
        UIHelper.makeLabel(label: simpanNomorkartuLabel, corner: 0, allignment: .left, leadingAnchor: simpanNomorKartuButton.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: mmTextfield.bottomAnchor, leadingConstant: 10, trailingConstant: -20, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: simpanNomorkartuLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Simpan nomor kartu", kerning: 0.5)

        kartuKreditView.addSubview(pilihPembayaranLabel)
        UIHelper.makeLabel(label: pilihPembayaranLabel, corner: 0, allignment: .left, leadingAnchor: kartuKreditView.leadingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: simpanNomorKartuButton.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihPembayaranLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Pilih Pembayaran", kerning: 0.5)

        kartuKreditView.addSubview(checkBoxBayarPenuh)
        UIHelper.makeSmallButton(smallButton: checkBoxBayarPenuh, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: pilihPembayaranLabel.bottomAnchor, leadingConstant: 20, topConstant: 10, corner: 3, heightAnchor: 14, widthtAnchor: 14, borderWidth: 1, colorBorder: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1))

        kartuKreditView.addSubview(bayarpenuhLabel)
        UIHelper.makeLabel(label: bayarpenuhLabel, corner: 0, allignment: .left, leadingAnchor: checkBoxBayarPenuh.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: pilihPembayaranLabel.bottomAnchor, leadingConstant: 10, trailingConstant: -20, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: bayarpenuhLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Penuh", kerning: 0.5)

        kartuKreditView.addSubview(checkBoxBayarCicilan)
        UIHelper.makeSmallButton(smallButton: checkBoxBayarCicilan, leadingAnchor: kartuKreditView.leadingAnchor, topAnchor: checkBoxBayarPenuh.bottomAnchor, leadingConstant: 20, topConstant: 15, corner: 3, heightAnchor: 14, widthtAnchor: 14, borderWidth: 1, colorBorder: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1))

        kartuKreditView.addSubview(bayarCicilanTextField)
        UIHelper.makeTetxField(textField: bayarCicilanTextField, leadingAnchor: checkBoxBayarCicilan.trailingAnchor, trailingAnchor: kartuKreditView.trailingAnchor, topAnchor: bayarpenuhLabel.bottomAnchor, leadingConstant: 10, trailingConstant: -20, topConstant: 15, corner: 0, heightAnchor: 16, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: bayarCicilanTextField, fontName: fontNameHelper.AvantGardeITCbyBTBook, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: "", kerning: 0.5)
        bayarCicilanTextField.textAlignment = .left
        bayarCicilanTextField.tintColor = .clear


        kartuKreditView.addSubview(dropDownImage)
        UIHelper.makeImageView(imageView: dropDownImage, leadingAnchor: kartuKreditView.trailingAnchor, topAnchor: checkBoxBayarCicilan.topAnchor, leadingConstant: -35, topConstant: 5, corner: 0, heightAnchor: 7)
        dropDownImage.widthAnchor.constraint(equalToConstant: 10).isActive = true
        dropDownImage.image = UIImage(named: "dropDownIcon")

        kartuKreditBaseView.addSubview(bayarButton)
        UIHelper.makeButton(button: bayarButton, leadingAnchor: kartuKreditBaseView.leadingAnchor, trailingAnchor: kartuKreditBaseView.trailingAnchor, topAnchor: kartuKreditView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        bayarButton.setTitle("BAYAR", for: .normal)

    }
    
    
    func setupNavBarBayarKartuKredit(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
        backItem.title = "PEMBAYARAN"
        let titleFont  = UIFont(name: fontNameHelper.NunitoExtraBold, size: 14)
        backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
        navigationItem.leftBarButtonItems = [customButtonNav, backItem]
    }
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
