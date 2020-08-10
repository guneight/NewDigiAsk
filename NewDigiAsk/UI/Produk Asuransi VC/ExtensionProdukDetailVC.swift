//
//  ExtensionProdukDetailVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 25/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension ProdukDetailViewController {
    
    func setupUI(){
        let height = view.frame.size.height
        let width = view.frame.size.width
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
        
        produkBaseView.addSubview(produkView)
        UIHelper.makeView(view: produkView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height, widthAnchor: 0)
        produkView.backgroundColor = .white

        produkView.addSubview(produkDetailScrollView)
        produkDetailScrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkDetailScrollView.leadingAnchor.constraint(equalTo: produkView.leadingAnchor),
            produkDetailScrollView.trailingAnchor.constraint(equalTo: produkView.trailingAnchor),
            produkDetailScrollView.topAnchor.constraint(equalTo: produkView.topAnchor),
            produkDetailScrollView.heightAnchor.constraint(equalToConstant: height*0.77)
        ])
        produkDetailScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        produkDetailScrollView.isScrollEnabled = true
        produkDetailScrollView.showsVerticalScrollIndicator = false

        produkDetailScrollView.layoutIfNeeded()

        produkView.addSubview(pilihProdukButton)
        UIHelper.makeButton(button: pilihProdukButton, leadingAnchor: produkView.leadingAnchor, trailingAnchor: produkView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: -20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        
//        let index =  indexProdukSelect
//               if index == 0  {
                   pilihProdukButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                   pilihProdukButton.setTitle( "PILIH PRODUK", for: .normal)

//               }else{
//                   pilihProdukButton.backgroundColor = #colorLiteral(red: 0.2458193898, green: 0.2900034189, blue: 0.4485326409, alpha: 1)
//                   pilihProdukButton.setTitle( "Coming soon,,,", for: .normal)
//                   pilihProdukButton.isEnabled = false
//                   pilihProdukButton.layer.cornerRadius = 5
//               }
        let descriptionFont = UIFont(name: "Arial", size: 10)?.fontDescriptor.withSymbolicTraits(UIFontDescriptor.SymbolicTraits.traitBold)
        pilihProdukButton.titleLabel?.font = UIFont(descriptor: descriptionFont!, size: 10)

        produkDetailScrollView.addSubview(produkBasesView)
        produkBasesView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkBasesView.leadingAnchor.constraint(equalTo: produkDetailScrollView.leadingAnchor),
            produkBasesView.trailingAnchor.constraint(equalTo: produkDetailScrollView.trailingAnchor),
            produkBasesView.topAnchor.constraint(equalTo: produkDetailScrollView.topAnchor),
            produkBasesView.bottomAnchor.constraint(equalTo: produkDetailScrollView.bottomAnchor),
            produkBasesView.heightAnchor.constraint(equalToConstant: height*1.5),
            produkBasesView.widthAnchor.constraint(equalTo: produkDetailScrollView.widthAnchor)
        ])
        let heightConstraint = produkDetailScrollView.heightAnchor.constraint(equalTo: produkDetailScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        produkBasesView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        produkBasesView.addSubview(produkDetailHeaderLabel)
        UIHelper.makeLabel(label: produkDetailHeaderLabel, corner: 0, allignment: .left, leadingAnchor: produkBasesView.leadingAnchor, trailingAnchor: produkBasesView.trailingAnchor, topAnchor: produkBasesView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 19, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: produkDetailHeaderLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .medium, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.2)

        produkBasesView.addSubview(produkDetailImage)
        produkDetailImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkDetailImage.leadingAnchor.constraint(equalTo: produkBasesView.leadingAnchor),
            produkDetailImage.trailingAnchor.constraint(equalTo: produkBasesView.trailingAnchor),
            produkDetailImage.topAnchor.constraint(equalTo: produkDetailHeaderLabel.bottomAnchor, constant: 13),

        ])

        if width > 414 {
            produkDetailImage.heightAnchor.constraint(equalToConstant: view.frame.size.width/2.3 ).isActive = true
        }else{
            produkDetailImage.heightAnchor.constraint(equalToConstant: 157 ).isActive = true
        }
        produkDetailImage.image = UIImage(named: "PA")
        produkDetailImage.contentMode = .scaleAspectFit

        produkBasesView.addSubview(attributView)
        attributView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            attributView.leadingAnchor.constraint(equalTo: produkBasesView.leadingAnchor, constant: 26),
            attributView.bottomAnchor.constraint(equalTo: produkDetailImage.bottomAnchor, constant: -30),
            attributView.widthAnchor.constraint(equalToConstant: 4),
            attributView.heightAnchor.constraint(equalToConstant: 60)

        ])
        attributView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        produkBasesView.addSubview(namaProdukLabel)
        if width > 414 {
            UIHelper.makeLabel(label: namaProdukLabel, corner: 0, allignment: .left, leadingAnchor: attributView.trailingAnchor, trailingAnchor: produkDetailImage.trailingAnchor, topAnchor: produkDetailImage.bottomAnchor, leadingConstant: 12, trailingConstant: -(view.frame.size.width/2.5), topConstant: -150, heightAnchor: 70, widthAnchor: 0)
        }else{
           UIHelper.makeLabel(label: namaProdukLabel, corner: 0, allignment: .left, leadingAnchor: attributView.trailingAnchor, trailingAnchor: produkDetailImage.trailingAnchor, topAnchor: produkDetailImage.topAnchor, leadingConstant: 12, trailingConstant: -(view.frame.size.width/2.5), topConstant: 60, heightAnchor: 70, widthAnchor: 0)
        }
        namaProdukLabel.numberOfLines = 3
        UIHelper.setTextLabel(label: namaProdukLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), weight: .bold, fontSize: 18, text: "Asuransi \nKecelakaan \nDiri", kerning: 1)


        produkBasesView.addSubview(deskripsiProdukLabel)
        let text = "."
        //        let heightLabel = deskripsiProdukLabel.systemLayoutSizeFitting(CGSize(width: produkBaseView.frame.size.width-90, height: UIView.layoutFittingCompressedSize.height), withHorizontalFittingPriority: .required, verticalFittingPriority: .fittingSizeLevel).height
        UIHelper.makeLabel(label: deskripsiProdukLabel, corner: 0, allignment: .left, leadingAnchor: produkBasesView.leadingAnchor, trailingAnchor: produkBasesView.trailingAnchor, topAnchor: produkDetailImage.bottomAnchor, leadingConstant: 70, trailingConstant: -20, topConstant: 17, heightAnchor: heightDeskripsiProdukLabel+20, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiProdukLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 0.66), weight: .medium, fontSize: 12, text: text, kerning: 0)
        deskripsiProdukLabel.numberOfLines = 0

        produkBasesView.addSubview(penggunaLabel)
        UIHelper.makeLabel(label: penggunaLabel, corner: 0, allignment: .left, leadingAnchor: produkBasesView.leadingAnchor, trailingAnchor: produkBasesView.trailingAnchor, topAnchor: deskripsiProdukLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: penggunaLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .medium, fontSize: 12, text: "Pengguna (tertanggung)", kerning: 0)

        produkBasesView.addSubview(deskripsiPenggunaLabel)
        UIHelper.makeLabel(label: deskripsiPenggunaLabel, corner: 0, allignment: .left, leadingAnchor: produkBasesView.leadingAnchor, trailingAnchor: produkBasesView.trailingAnchor, topAnchor: penggunaLabel.bottomAnchor, leadingConstant: 73, trailingConstant: -17, topConstant: 10, heightAnchor: 43, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiPenggunaLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 14, text: "Individu yang berusia 17 sampai dengan 60 tahun baik perorangan atau grup", kerning: 0.04)
        deskripsiPenggunaLabel.numberOfLines = 0

        produkBasesView.addSubview(gantiRugiContainerView)
        UIHelper.makeView(view: gantiRugiContainerView, leadingAnchor: produkBasesView.leadingAnchor, trailingAnchor: produkBasesView.trailingAnchor, topAnchor: deskripsiPenggunaLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 40 , corner: 10, heightAnchor: heightGantiRugiLabel+80, widthAnchor:    0)
        gantiRugiContainerView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)

        produkBasesView.addSubview(iconGantiRugiImage)
        UIHelper.makeImageView(imageView: iconGantiRugiImage, leadingAnchor: gantiRugiContainerView.leadingAnchor, topAnchor: gantiRugiContainerView.topAnchor, leadingConstant: 26, topConstant: -35, corner: 10, heightAnchor: 69)
        iconGantiRugiImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconGantiRugiImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        iconGantiRugiImage.image = UIImage(named: "wallet")
        iconGantiRugiImage.contentMode = .center

        gantiRugiContainerView.addSubview(gantiRugiLabel)
        UIHelper.makeLabel(label: gantiRugiLabel, corner: 0, allignment: .right, leadingAnchor:iconGantiRugiImage.trailingAnchor, trailingAnchor: gantiRugiContainerView.trailingAnchor, topAnchor: gantiRugiContainerView.topAnchor, leadingConstant:10, trailingConstant: -15, topConstant: 10, heightAnchor: 16, widthAnchor: 0   )
        UIHelper.setTextLabel(label: gantiRugiLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: "Ganti Rugi", kerning: 0)

        gantiRugiContainerView.addSubview(lineGantiRugiLabel)
        UIHelper.makeView(view: lineGantiRugiLabel, leadingAnchor: iconGantiRugiImage.trailingAnchor, trailingAnchor: gantiRugiContainerView.trailingAnchor, topAnchor: gantiRugiLabel.bottomAnchor, leadingConstant: 6, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineGantiRugiLabel.backgroundColor = #colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1)

        gantiRugiContainerView.addSubview(deskripsiGantiRugi)
        deskripsiGantiRugi.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deskripsiGantiRugi.leadingAnchor.constraint(equalTo: gantiRugiContainerView.leadingAnchor, constant: 50),
            deskripsiGantiRugi.trailingAnchor.constraint(equalTo: gantiRugiContainerView.trailingAnchor, constant: -12),
            deskripsiGantiRugi.topAnchor.constraint(equalTo: lineGantiRugiLabel.bottomAnchor, constant: 15),
            deskripsiGantiRugi.heightAnchor.constraint(equalToConstant: heightGantiRugiLabel+20)
        ])

        let textGantiRugi = "Memberikan ganti rugi kepada tertanggung/ahli waris apabila tertanggung mengalami kecelakaan yang mengakibatkan:Meninggal dunia, Cacat tetap total atau cacat tetap sebagian, Biaya perawatan dan atau pengobatan"
        UIHelper.setTextLabel(label: deskripsiGantiRugi , fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1), weight: .regular, fontSize: 12, text: textGantiRugi, kerning: 0)
        deskripsiGantiRugi.numberOfLines = 0

        produkBasesView.addSubview(penggantiBiayacontainerView)
        UIHelper.makeView(view: penggantiBiayacontainerView, leadingAnchor: produkBasesView.leadingAnchor, trailingAnchor: produkBasesView.trailingAnchor, topAnchor: gantiRugiContainerView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 47, corner: 10, heightAnchor: heighPenggantianBiayaLabel+70, widthAnchor: 0)
        penggantiBiayacontainerView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)

        produkBasesView.addSubview(iconPenggantiBiayaImage)
        UIHelper.makeImageView(imageView: iconPenggantiBiayaImage, leadingAnchor: penggantiBiayacontainerView.leadingAnchor, topAnchor: penggantiBiayacontainerView.topAnchor, leadingConstant: 26, topConstant: -35, corner: 10, heightAnchor: 69)
        iconPenggantiBiayaImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconPenggantiBiayaImage.backgroundColor = #colorLiteral(red: 1, green: 0.6352941176, blue: 0.3137254902, alpha: 1)
        iconPenggantiBiayaImage.image = UIImage(named: "idr-min")
        iconPenggantiBiayaImage.contentMode = .center


        penggantiBiayacontainerView.addSubview(penggantiBiayaLabel)
        UIHelper.makeLabel(label: penggantiBiayaLabel, corner: 0, allignment: .right, leadingAnchor: iconPenggantiBiayaImage.trailingAnchor, trailingAnchor: penggantiBiayacontainerView.trailingAnchor, topAnchor: penggantiBiayacontainerView.topAnchor, leadingConstant:10, trailingConstant: -15, topConstant: 10, heightAnchor: 16, widthAnchor: 0   )
        UIHelper.setTextLabel(label: penggantiBiayaLabel , fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: "Penggantian Biaya", kerning: 0)

        penggantiBiayacontainerView.addSubview(linePenggatianBiayaLabel)
        UIHelper.makeView(view: linePenggatianBiayaLabel, leadingAnchor: iconPenggantiBiayaImage.trailingAnchor, trailingAnchor: penggantiBiayacontainerView.trailingAnchor, topAnchor: penggantiBiayaLabel.bottomAnchor, leadingConstant: 6, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        linePenggatianBiayaLabel.backgroundColor = #colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1)

        penggantiBiayacontainerView.addSubview(deskripsiPenggantiBiayaLabel)
        deskripsiPenggantiBiayaLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deskripsiPenggantiBiayaLabel.leadingAnchor.constraint(equalTo: penggantiBiayacontainerView.leadingAnchor, constant: 50),
            deskripsiPenggantiBiayaLabel.trailingAnchor.constraint(equalTo: penggantiBiayacontainerView.trailingAnchor, constant: -12),
            deskripsiPenggantiBiayaLabel.topAnchor.constraint(equalTo: linePenggatianBiayaLabel.bottomAnchor, constant: 15),
            deskripsiPenggantiBiayaLabel.heightAnchor.constraint(equalToConstant: heighPenggantianBiayaLabel)
        ])
        let textPenggantianBiaya = "Memberikan ganti rugi akibat kecelakaan atas biaya-biaya yang dikerluarkan dengan tambahan premi berupa:Penggantian biaya expatriasy atau pemulangan jenazah dari tempat kejadian kecelakaan Penggantian biaya pemakaman Penggantian biaya ambulans Penggantian biaya pengurusan dokumen"
        UIHelper.setTextLabel(label: deskripsiPenggantiBiayaLabel , fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: textPenggantianBiaya, kerning: 0)
        deskripsiPenggantiBiayaLabel.numberOfLines = 0
    }
    
    func setupNavBarProdukDetail(){
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
        navigationController?.popViewController(animated: true)
    }
    
}
