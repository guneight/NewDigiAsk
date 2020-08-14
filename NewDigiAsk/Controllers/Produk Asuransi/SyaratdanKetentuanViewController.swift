//
//  SyaratdanKetentuanViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SyaratdanKetentuanViewController: UIViewController {
    let produkBaseView = UIView()
    
    let prosesStackView : UIStackView = {
        let stackViewCV = UIStackView()
        stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
        stackViewCV.distribution = UIStackView.Distribution.fillEqually
        stackViewCV.alignment = UIStackView.Alignment.center
        stackViewCV.backgroundColor = #colorLiteral(red: 0.2131774127, green: 0.6528760791, blue: 1, alpha: 1)
        stackViewCV.translatesAutoresizingMaskIntoConstraints = false
        stackViewCV.spacing = 30
        return stackViewCV
    }()
    let lineView = UIView()
    let viewContainerTableProduk = UIView()
    let produkTable = UITableView()
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
    let syaratDanKetentuanView = UIView()
    let SyaratDanKetentuanScrollView = UIScrollView()
    let syaratDanKetentuanContainerView = UIView()
    let syaratDanKetentuanLabel = UILabel()
    let detailSyaratdanKetentuanLabel = UILabel()
    let bacaSelengkapnyaLabel = UILabel()
    let setujuButton = UIButton()
    let setujuView = UIView()
     var packet = [DetailJenisProduct]()
    var penerimaManfaat : Daftar?
    var syaratKetentuan : String = ""
    var heightdetailSyaratdanKetentuanLabel : CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.customHeightLabel(text: self.syaratKetentuan)
            self.setupUI()
            self.setupValue()
        }
        
        setupNavBarSyaratdanKetentuan()
        view.layoutIfNeeded()
        setupAnimation()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        setujuButton.addTarget(self, action: #selector(setujuAction(sender:)), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(setujuAction(sender:)))
        setujuView.addGestureRecognizer(tapGesture)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupAnimation()
    }
    
    @objc func setujuAction(sender: Any){
        DispatchQueue.main.async {
            print("cart", self.packet)
            Cart.shared.createCart(
                idProduct: "\(self.packet[0].packet.productDetail.product.idProduct)",
                productName: "\(self.packet[0].packet.productDetail.product.namaProduct)",
                productDescription: "\(self.packet[0].packet.productDetail.product.deskripsiProduk)",
                jenisPremi: "\(self.packet[0].packet.namaPacket)",
                jangkaWaktu: "\(self.packet[0].jangkaWaktu)",
                premi: "\(self.packet[0].premi)",
                nilaiPertanggungan: "\(self.packet[0].tsi)"
            )
            let identitasPenanungVC = self.storyboard?.instantiateViewController(identifier: "IdentitasTertanggungdanPenerimaManfaatViewController") as! IdentitasTertanggungdanPenerimaManfaatViewController
            identitasPenanungVC.penerimaManfaat = self.penerimaManfaat
            self.navigationController?.pushViewController(identitasPenanungVC, animated: true)
            
        }
        
    }
    
    func customHeightLabel(text: String){
        heightdetailSyaratdanKetentuanLabel = heightForView(text: text, font: UIFont(name: fontNameHelper.NunitoRegular, size: 14)!, width: view.frame.size.width-100)
    }
    
    func setupValue(){
        detailSyaratdanKetentuanLabel.text = syaratKetentuan
    }
    
    
    
    
}
