//
//  ProdukDetailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 25/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProdukDetailViewController: UIViewController {
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
    let produkView = UIView()
    let produkDetailScrollView = UIScrollView()
    let produkBasesView = UIView()
    let produkDetailHeaderLabel = UILabel()
    let produkDetailImage = UIImageView()
    let attributView = UIView()
    let namaProdukLabel = UILabel()
    let deskripsiProdukLabel = UILabel()
    let penggunaLabel = UILabel()
    let deskripsiPenggunaLabel = UILabel()
    let gantiRugiContainerView = UIView()
    let iconGantiRugiImage = UIImageView()
    let gantiRugiLabel = UILabel()
    let lineGantiRugiLabel = UILabel()
    let deskripsiGantiRugi = UILabel()
    let penggantiBiayacontainerView = UIView()
    let iconPenggantiBiayaImage = UIImageView()
    let penggantiBiayaLabel = UILabel()
    let linePenggatianBiayaLabel = UIView()
    let deskripsiPenggantiBiayaLabel = UILabel()
    let pilihProdukButton = UIButton()
    var packetProduct : PacketProduct?
    var indexProdukSelect : Int!
    var idPacket : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        pilihProdukAction()
        setupNavBarProdukDetail()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        setupValue()
        
        print("product item :", packetProduct)
        
        // Do any additional setup after loading the view.
    }
    
    func pilihProdukAction(){
        pilihProdukButton.addTarget(self, action: #selector(pilihProduk(sender:)), for: .touchUpInside)
    }
    
    @objc func pilihProduk(sender: UIButton){
        let jenisProdukVC = storyboard?.instantiateViewController(identifier: "JenisProdukViewController") as! JenisProdukViewController
        jenisProdukVC.packetProduct = packetProduct
        self.navigationController?.pushViewController(jenisProdukVC, animated: true)
    }
    
    func setupValue(){
        produkDetailHeaderLabel.text = packetProduct?.namaProduct
        namaProdukLabel.text = packetProduct?.namaProduct
        deskripsiProdukLabel.text = packetProduct?.deskripsiProduk
        deskripsiPenggunaLabel.text = packetProduct?.pengguna
        deskripsiGantiRugi.text = packetProduct?.deskripsiGantiRugi
        deskripsiPenggantiBiayaLabel.text = packetProduct?.deskripsiTambahan
//        guard let images = packetProduct?.logo else{return}
//        let data = Data(base64Encoded: images)
//        guard let datas = data else{return}
//        let image = UIImage(data: datas)
//        print("image", image)
//        produkDetailImage.image = image
    }
}



