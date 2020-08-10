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
    var product : product?
    var indexProdukSelect : Int!
    var idPacket : Int?
    var heightGantiRugiLabel : CGFloat = 0
    var heighPenggantianBiayaLabel : CGFloat = 0
    var heightDeskripsiProdukLabel : CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        customHeightLabel()
        setupUI()
        pilihProdukAction()
        setupNavBarProdukDetail()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        customHeightLabel()
        setupValue()
        
        // Do any additional setup after loading the view.
    }
    
    func pilihProdukAction(){
        pilihProdukButton.addTarget(self, action: #selector(pilihProduk(sender:)), for: .touchUpInside)
    }
    
    @objc func pilihProduk(sender: UIButton){
        let jenisProdukVC = storyboard?.instantiateViewController(identifier: "JenisProdukViewController") as! JenisProdukViewController
        guard let idProduct = product?.idProduct else {return}
        jenisProdukVC.productId = "\(idProduct)"
        self.navigationController?.pushViewController(jenisProdukVC, animated: true)
    }
    
    func customHeightLabel(){
          heightDeskripsiProdukLabel =  heightForView(text: product?.deskripsiProduk ?? "", font: UIFont(name: fontNameHelper.NunitoRegular, size: 12)!, width: view.frame.size.width-100)
        heightGantiRugiLabel =  heightForView(text: product?.deskripsiGantiRugi ?? "", font: UIFont(name: fontNameHelper.NunitoRegular, size: 12)!, width: view.frame.size.width-100)
        heighPenggantianBiayaLabel =  heightForView(text: product?.deskripsiTambahan ?? "", font: UIFont(name: fontNameHelper.NunitoRegular, size: 12)!, width: view.frame.size.width-100)
        print(heightGantiRugiLabel, heighPenggantianBiayaLabel)
    }
    func setupValue(){
        produkDetailHeaderLabel.text = product?.namaProduct
        namaProdukLabel.text = product?.namaProduct
        deskripsiProdukLabel.text = product?.deskripsiProduk
        deskripsiPenggunaLabel.text = product?.pengguna
        deskripsiGantiRugi.text = product?.deskripsiGantiRugi
        deskripsiPenggantiBiayaLabel.text = product?.deskripsiTambahan
    }
}



