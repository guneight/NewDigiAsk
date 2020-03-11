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
        print("height view = \(height)")
        view.backgroundColor = .clear
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
        gesture.direction = .down
        view.addSubview(produkView)
        UIHelper.makeView(view: produkView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 55, corner: 10, heightAnchor: 0, widthAnchor: 0)
        produkView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        produkView.backgroundColor = .white
        
        produkView.addSubview(produkDetailScrollView)
        produkDetailScrollView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
        produkDetailScrollView.leadingAnchor.constraint(equalTo: produkView.leadingAnchor),
        produkDetailScrollView.trailingAnchor.constraint(equalTo: produkView.trailingAnchor),
        produkDetailScrollView.topAnchor.constraint(equalTo: produkView.topAnchor),
        produkDetailScrollView.heightAnchor.constraint(equalToConstant: height*0.77-55)
        ])
        produkDetailScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        produkDetailScrollView.isScrollEnabled = true
        produkDetailScrollView.showsVerticalScrollIndicator = false
        print("Height : \(height-(height*0.75))")
        print("Height scroll: \(produkDetailScrollView.frame.size.height)")
        produkDetailScrollView.layoutIfNeeded()
        
        produkView.addSubview(pilihProdukButton)
        UIHelper.makeButton(button: pilihProdukButton, leadingAnchor: produkView.leadingAnchor, trailingAnchor: produkView.trailingAnchor, topAnchor: produkDetailScrollView.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 24, heightAnchor: 48, widthAnchor: 0)
        pilihProdukButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        pilihProdukButton.setTitle( "PILIH PRODUK", for: .normal)
        let descriptionFont = UIFont(name: "Arial", size: 10)?.fontDescriptor.withSymbolicTraits(UIFontDescriptor.SymbolicTraits.traitBold)
        pilihProdukButton.titleLabel?.font = UIFont(descriptor: descriptionFont!, size: 10)
        
        produkDetailScrollView.addSubview(produkBaseView)
        produkBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkBaseView.leadingAnchor.constraint(equalTo: produkDetailScrollView.leadingAnchor),
            produkBaseView.trailingAnchor.constraint(equalTo: produkDetailScrollView.trailingAnchor),
            produkBaseView.topAnchor.constraint(equalTo: produkDetailScrollView.topAnchor),
            produkBaseView.bottomAnchor.constraint(equalTo: produkDetailScrollView.bottomAnchor),
            produkBaseView.heightAnchor.constraint(equalToConstant: 1100),
            produkBaseView.widthAnchor.constraint(equalTo: produkDetailScrollView.widthAnchor)
            ])
        let heightConstraint = produkDetailScrollView.heightAnchor.constraint(equalTo: produkDetailScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        produkBaseView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
        produkBaseView.addSubview(produkDetailHeaderLabel)
        UIHelper.makeLabel(label: produkDetailHeaderLabel, corner: 0, allignment: .left, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 19, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: produkDetailHeaderLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .medium, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.2)

        produkBaseView.addSubview(produkDetailImage)
        produkDetailImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkDetailImage.leadingAnchor.constraint(equalTo: produkBaseView.leadingAnchor),
            produkDetailImage.trailingAnchor.constraint(equalTo: produkBaseView.trailingAnchor),
            produkDetailImage.topAnchor.constraint(equalTo: produkDetailHeaderLabel.bottomAnchor, constant: 13),
            produkDetailImage.heightAnchor.constraint(equalToConstant: 157)
        ])
        produkDetailImage.image = UIImage(named: "PA")
        produkDetailImage.contentMode = .scaleAspectFit
        
        produkBaseView.addSubview(attributView)
        attributView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            attributView.leadingAnchor.constraint(equalTo: produkBaseView.leadingAnchor, constant: 26),
            attributView.bottomAnchor.constraint(equalTo: produkDetailImage.bottomAnchor, constant: -26),
            attributView.widthAnchor.constraint(equalToConstant: 4),
            attributView.heightAnchor.constraint(equalToConstant: 47)
            
        ])
        attributView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        produkBaseView.addSubview(namaProdukLabel)
        UIHelper.makeLabel(label: namaProdukLabel, corner: 0, allignment: .left, leadingAnchor: attributView.trailingAnchor, trailingAnchor: produkDetailImage.trailingAnchor, topAnchor: produkDetailImage.topAnchor, leadingConstant: 12, trailingConstant: -(view.frame.size.width/2.5), topConstant: 84, heightAnchor: 52, widthAnchor: 0)
        namaProdukLabel.text = "Asuransi Kecelakaan Diri"
        namaProdukLabel.numberOfLines = 3
        namaProdukLabel.font = UIFont(name: "AvantGarde Bk BT", size: 17)
        namaProdukLabel.textColor = .white
        
        produkBaseView.addSubview(deskripsiProdukLabel)
        var text = "Memberikan perlindungan atas risiko kematian, cacat tetap, biaya perawatan dan atau pengobatan yang secara langsung disebabkan suatu kecelakaan. Kecelakaan yaitu suatu kejadian atau peristiwa yang mengandung unsur kekerasan, baik bersifat fisik maupun kimia, yang datangnya secara tiba-tiba, termasuk juga kecelakaan yaitu yang disebabkan karena keracunan makanan, uap dan gas, jatuh ke dalam air atau tenggelam."
//        let heightLabel = deskripsiProdukLabel.systemLayoutSizeFitting(CGSize(width: produkBaseView.frame.size.width-90, height: UIView.layoutFittingCompressedSize.height), withHorizontalFittingPriority: .required, verticalFittingPriority: .fittingSizeLevel).height
        UIHelper.makeLabel(label: deskripsiProdukLabel, corner: 0, allignment: .left, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkDetailImage.bottomAnchor, leadingConstant: 70, trailingConstant: -20, topConstant: 17, heightAnchor: 200, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiProdukLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.66), weight: .medium, fontSize: 14, text: text, kerning: 0.04)
        deskripsiProdukLabel.numberOfLines = 0
        
        produkBaseView.addSubview(penggunaLabel)
        UIHelper.makeLabel(label: penggunaLabel, corner: 0, allignment: .left, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: deskripsiProdukLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: penggunaLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .medium, fontSize: 12, text: "Pengguna (tertanggung)", kerning: 0.12)
        
        produkBaseView.addSubview(deskripsiPenggunaLabel)
        UIHelper.makeLabel(label: deskripsiPenggunaLabel, corner: 0, allignment: .left, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: penggunaLabel.bottomAnchor, leadingConstant: 73, trailingConstant: -17, topConstant: 10, heightAnchor: 43, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiPenggunaLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .medium, fontSize: 14, text: "Individu yang berusia 17 sampai dengan 60 tahun baik perorangan atau grup", kerning: 0.04)
        deskripsiPenggunaLabel.numberOfLines = 0
        
        produkBaseView.addSubview(gantiRugiContainerView)
        UIHelper.makeView(view: gantiRugiContainerView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: deskripsiPenggunaLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 40 , corner: 10, heightAnchor: 206, widthAnchor:    0)
        gantiRugiContainerView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)

        produkBaseView.addSubview(iconGantiRugiImage)
        UIHelper.makeImageView(imageView: iconGantiRugiImage, leadingAnchor: gantiRugiContainerView.leadingAnchor, topAnchor: gantiRugiContainerView.topAnchor, leadingConstant: 26, topConstant: -35, corner: 10, heightAnchor: 69)
        iconGantiRugiImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconGantiRugiImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        iconGantiRugiImage.image = UIImage(named: "wallet")
        iconGantiRugiImage.contentMode = .center

        gantiRugiContainerView.addSubview(gantiRugiLabel)
        UIHelper.makeLabel(label: gantiRugiLabel, corner: 0, allignment: .right, leadingAnchor:iconGantiRugiImage.trailingAnchor, trailingAnchor: gantiRugiContainerView.trailingAnchor, topAnchor: gantiRugiContainerView.topAnchor, leadingConstant:10, trailingConstant: -15, topConstant: 10, heightAnchor: 16, widthAnchor: 0   )
        UIHelper.setTextLabel(label: gantiRugiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: "Ganti Rugi", kerning: 0.12)

        gantiRugiContainerView.addSubview(lineGantiRugiLabel)
        UIHelper.makeView(view: lineGantiRugiLabel, leadingAnchor: iconGantiRugiImage.trailingAnchor, trailingAnchor: gantiRugiContainerView.trailingAnchor, topAnchor: gantiRugiLabel.bottomAnchor, leadingConstant: 6, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineGantiRugiLabel.backgroundColor = #colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1)

        gantiRugiContainerView.addSubview(deskripsiGantiRugi)
        deskripsiGantiRugi.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deskripsiGantiRugi.leadingAnchor.constraint(equalTo: gantiRugiContainerView.leadingAnchor, constant: 50),
            deskripsiGantiRugi.trailingAnchor.constraint(equalTo: gantiRugiContainerView.trailingAnchor, constant: -12),
            deskripsiGantiRugi.topAnchor.constraint(equalTo: lineGantiRugiLabel.bottomAnchor, constant: 15),
            deskripsiGantiRugi.bottomAnchor.constraint(equalTo: gantiRugiContainerView.bottomAnchor, constant: -12)
        ])
       
        var textGantiRugi = "Memberikan ganti rugi kepada tertanggung/ahli waris apabila tertanggung mengalami kecelakaan yang mengakibatkan:Meninggal dunia, Cacat tetap total atau cacat tetap sebagian, Biaya perawatan dan atau pengobatan"
         UIHelper.setTextLabel(label: deskripsiGantiRugi , fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1), weight: .regular, fontSize: 12, text: textGantiRugi, kerning: 0.06)
         deskripsiGantiRugi.numberOfLines = 0

        produkBaseView.addSubview(penggantiBiayacontainerView)
        UIHelper.makeView(view: penggantiBiayacontainerView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: gantiRugiContainerView.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 47, corner: 10, heightAnchor: 206, widthAnchor: 0)
        penggantiBiayacontainerView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        
        produkBaseView.addSubview(iconPenggantiBiayaImage)
        UIHelper.makeImageView(imageView: iconPenggantiBiayaImage, leadingAnchor: penggantiBiayacontainerView.leadingAnchor, topAnchor: penggantiBiayacontainerView.topAnchor, leadingConstant: 26, topConstant: -35, corner: 10, heightAnchor: 69)
        iconPenggantiBiayaImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconPenggantiBiayaImage.backgroundColor = #colorLiteral(red: 1, green: 0.6352941176, blue: 0.3137254902, alpha: 1)
        iconPenggantiBiayaImage.image = UIImage(named: "idr-min")
        iconPenggantiBiayaImage.contentMode = .center
        

        penggantiBiayacontainerView.addSubview(penggantiBiayaLabel)
        UIHelper.makeLabel(label: penggantiBiayaLabel, corner: 0, allignment: .right, leadingAnchor: iconPenggantiBiayaImage.trailingAnchor, trailingAnchor: penggantiBiayacontainerView.trailingAnchor, topAnchor: penggantiBiayacontainerView.topAnchor, leadingConstant:10, trailingConstant: -5, topConstant: 10, heightAnchor: 16, widthAnchor: 0   )
         UIHelper.setTextLabel(label: penggantiBiayaLabel , fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: "Penggantian Biaya", kerning: 0.12)

        penggantiBiayacontainerView.addSubview(linePenggatianBiayaLabel)
        UIHelper.makeView(view: linePenggatianBiayaLabel, leadingAnchor: iconPenggantiBiayaImage.trailingAnchor, trailingAnchor: penggantiBiayacontainerView.trailingAnchor, topAnchor: penggantiBiayaLabel.bottomAnchor, leadingConstant: 6, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        linePenggatianBiayaLabel.backgroundColor = #colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1)

        penggantiBiayacontainerView.addSubview(deskripsiPenggantiBiayaLabel)
        deskripsiPenggantiBiayaLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deskripsiPenggantiBiayaLabel.leadingAnchor.constraint(equalTo: penggantiBiayacontainerView.leadingAnchor, constant: 50),
            deskripsiPenggantiBiayaLabel.trailingAnchor.constraint(equalTo: penggantiBiayacontainerView.trailingAnchor, constant: -12),
            deskripsiPenggantiBiayaLabel.topAnchor.constraint(equalTo: linePenggatianBiayaLabel.bottomAnchor, constant: 15),
            deskripsiPenggantiBiayaLabel.bottomAnchor.constraint(equalTo: penggantiBiayacontainerView.bottomAnchor, constant: -12)
        ])
        var textPenggantianBiaya = "Memberikan ganti rugi akibat kecelakaan atas biaya-biaya yang dikerluarkan dengan tambahan premi berupa:Penggantian biaya expatriasy atau pemulangan jenazah dari tempat kejadian kecelakaan Penggantian biaya pemakaman Penggantian biaya ambulans Penggantian biaya pengurusan dokumen"
        UIHelper.setTextLabel(label: deskripsiPenggantiBiayaLabel , fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 12, text: textPenggantianBiaya, kerning: 0.06)
        deskripsiPenggantiBiayaLabel.numberOfLines = 0

        
    }
    @objc func swipeDown() {
            self.dismiss(animated: true, completion: nil)
       }

}
