//
//  ExtensionTentangKamiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension TentangKamiViewController{
    func setupUI(){
        let height = view.frame.size.height
        view.addSubview(tentangKamiScrollView)
        UIHelper.makeScroolView(scrollView: tentangKamiScrollView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, widthAnchor: view.frame.size.width, scrollAble: true, scrollShow: false)
         tentangKamiScrollView.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        tentangKamiScrollView.addSubview(tentangKamiBaseView)
        tentangKamiBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tentangKamiBaseView.leadingAnchor.constraint(equalTo: tentangKamiScrollView.leadingAnchor),
            tentangKamiBaseView.trailingAnchor.constraint(equalTo: tentangKamiScrollView.trailingAnchor),
            tentangKamiBaseView.topAnchor.constraint(equalTo: tentangKamiScrollView.topAnchor),
            tentangKamiBaseView.bottomAnchor.constraint(equalTo: tentangKamiScrollView.bottomAnchor),
            tentangKamiBaseView.heightAnchor.constraint(equalToConstant: 1300),
            tentangKamiBaseView.widthAnchor.constraint(equalTo: tentangKamiScrollView.widthAnchor)
            ])
        let heightConstraint = tentangKamiBaseView.heightAnchor.constraint(equalTo: tentangKamiScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        tentangKamiBaseView.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        tentangKamiBaseView.layoutIfNeeded()
        
        tentangKamiBaseView.addSubview(attributImage)
        UIHelper.makeImageView(imageView: attributImage, leadingAnchor: tentangKamiBaseView.leadingAnchor, topAnchor: tentangKamiBaseView.topAnchor, leadingConstant: 0, topConstant: 40, corner: 0, heightAnchor: 95)
        attributImage.trailingAnchor.constraint(equalTo: tentangKamiBaseView.trailingAnchor).isActive = true
        attributImage.image = UIImage(named: "atribut")
        
        tentangKamiBaseView.addSubview(logoImage)
        UIHelper.makeImageView(imageView: logoImage, leadingAnchor: tentangKamiBaseView.leadingAnchor, topAnchor: attributImage.topAnchor, leadingConstant: 80, topConstant: -40, corner: 15, heightAnchor: 76)
        logoImage.trailingAnchor.constraint(equalTo: tentangKamiBaseView.trailingAnchor, constant: -80).isActive = true
        logoImage.image = UIImage(named: "Biglogo")
        logoImage.contentMode = .center
        tentangKamiBaseView.addSubview(tentangKamiWhiteView)
        UIHelper.makeView(view: tentangKamiWhiteView, leadingAnchor: tentangKamiBaseView.leadingAnchor, trailingAnchor: tentangKamiBaseView.trailingAnchor, topAnchor: attributImage.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: -30, corner: 20, heightAnchor: tentangKamiBaseView.frame.size.height, widthAnchor: 0)
        tentangKamiWhiteView.backgroundColor = .white
        
        tentangKamiWhiteView.addSubview(tentangKamiLabel)
        UIHelper.makeLabel(label: tentangKamiLabel, corner: 0, allignment: .center, leadingAnchor: tentangKamiWhiteView.leadingAnchor, trailingAnchor: tentangKamiWhiteView.trailingAnchor, topAnchor: tentangKamiWhiteView.topAnchor, leadingConstant: 80, trailingConstant: -80, topConstant: 17, heightAnchor: 16, widthAnchor: 0)
        tentangKamiLabel.text = "TENTANG KAMI"
        tentangKamiLabel.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        tentangKamiWhiteView.addSubview(profilePerusahaan)
        UIHelper.makeLabel(label: profilePerusahaan, corner: 0, allignment: .left, leadingAnchor: tentangKamiWhiteView.leadingAnchor, trailingAnchor: tentangKamiWhiteView.trailingAnchor, topAnchor: tentangKamiLabel.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 0, heightAnchor: tentangKamiWhiteView.frame.size.height-250, widthAnchor: 0)
        profilePerusahaan.numberOfLines = 0
        profilePerusahaan.font = UIFont(name: "Helvetica LT Std", size: 14)
        
        
        let dataTentangKami = "PT. (Persero) Asuransi Kredit Indonesia atau PT. Askrindo (Persero) merupakan salah satu Badan Usaha Milik Negara (BUMN) yang bergerak dalam asuransi/penjaminan, tidak dapat dipisahkan dari pembangunan ekonomi Bangsa dan Negara Republik Indonesia.Sejak pemerintah menyusun dan menetapkan REPELITA I tahun 1969, yang salah satu sasaran pokok rencana tersebut adalah pemerataan hasil-hasil pembangunan dalam bidang kesempatan berusaha, pendapatan masyarakat dan sekaligus merangsang pertumbuhan lapangan kerja. Dalam rangka mencapai sasaran ini pemerintah mengambil langkah konkrit antara lain dengan mengembangkan usaha kecil dan menengah dengan cara mengatasi salah satu aspek usaha yang penting yaitu aspek pembiayaan. Sejalan dengan berubahnya waktu, saat ini PT. Askrindo (Persero) memiliki lima lini usaha yaitu Asuransi Kredit Bank, Asuransi Kredit Perdagangan, Surety Bond, Customs Bond dan Asuransi Umum. PT. Askrindo sejak tahun 2007 melaksanakan program pemerintah dalam rangka Inpres 6/2007 atau yang lebih dikenal sebagai penjaminan Kredit Usaha Rakyat (KUR). Dalam pelaksanaannya bersama dengan Askrindo memberikan penjaminan atas kredit yang disalurkan oleh tiga Bank pelaksana yaitu : Bank BRI, Bank BNI dan Bank Mandiri Usaha Mikro, Kecil dan Menengah (UMKM) di Indonesia merupakan tulang punggung kekuatan ekonomi yang mampu memberikan kontribusi yang sangat signifikan. Menguatnya permodalan UMKM akan memberikan multiplier effects berupa tumbuhnya kegiatan usaha yang diikuti dengan terbukanya lapangan kerja serta meningkatkan nilai usaha. Terciptanya UMKM yang tangguh pada tahap berikutnya mampu memberikan kontribusi dalam menekan angka pengangguran dari kemiskinan di Indonesia. Askrindo senantiasa mengembangkan sayap usahanya untuk memberikan layanan yang prima, dengan didukung oleh Kantor Cabang berjumlah 60 Kantor yang tersebar di 34 Provinsi seluruh Indonesia."
        
        profilePerusahaan.text = dataTentangKami
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
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "PROFILE", style: .plain, target: nil, action: nil)
              
    }
    @objc func backButtonTapped() {
             navigationController?.popViewController(animated: true)
           }
    
}


