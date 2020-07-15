//
//  DeskripsiProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DeskripsiProdukViewController: UIViewController {
    
    let produkIndicatorView = UIView()
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
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
    
    let produkView = UIView()
    let produkDetailScrollView = UIScrollView()
    let produkBaseView = UIView()
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
    var packetProduct = [PacketProduct]()
    var indexProdukSelect : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarDeskripsi()
        setupUIDeskripsiProduk()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        pilihProdukButton.addTarget(self, action: #selector(pilihProdukAction(sender:)), for: .touchUpInside)
        view.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - pilihProduk action
    
    @objc func pilihProdukAction(sender: Any){
        let produkDetail = storyboard?.instantiateViewController(identifier: "JenisProdukDetailViewController") as! JenisProdukDetailViewController
        self.navigationController?.pushViewController(produkDetail, animated: true)
    }

}
