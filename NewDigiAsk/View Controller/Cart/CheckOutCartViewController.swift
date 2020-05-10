//
//  CheckOutCartViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class CheckOutCartViewController: UIViewController {
    let produkBaseView = UIView()
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
        setupNavBarCheckOutCart()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        checkOutButton.addTarget(self, action: #selector(checkOutAction(sender:)), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
        setupNavBarCheckOutCart()
        view.layoutIfNeeded()
    }
    @objc func checkOutAction(sender: UIButton){
        let pembayaranCartVC = storyboard?.instantiateViewController(identifier: "PembayaranCartViewController") as! PembayaranCartViewController
        self.navigationController?.pushViewController(pembayaranCartVC, animated: true)
    }

    @objc func rightButtonAction(sender: Any){
         let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
        self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
        
    }

}
