//
//  KerangkangViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class KeranjangViewController: UIViewController {
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
    let keranjangBaseView = UIView()
    let pilihSemuaProduk = UILabel()
    let pilihSemuaProdukButton = UIButton()
    let daftarProdukKeranjangTable = UITableView()
    let checkOutButton = UIButton()
    let trushButton = UIButton()
    
    
    let jumlahProdukdiKreanjang : Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daftarProdukKeranjangTable.delegate = self
        daftarProdukKeranjangTable.dataSource = self
        view.layoutIfNeeded()
        setupUI()
        setupNavBarKeranjang()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        checkOutButton.addTarget(self, action: #selector(checkOutAction), for: .touchUpInside)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func checkOutAction(sender: Any){
        let checkOutVC = storyboard?.instantiateViewController(identifier: "CheckOutKeranjangViewController")  as! CheckOutKeranjangViewController
        self.navigationController?.pushViewController(checkOutVC, animated: true)
    }
    
    @objc func namaProdukAction(sender: Any){
        let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
        self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
    }
    
    @objc func rightButtonAction(sender: Any){
        let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
        self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
        
    }
}
