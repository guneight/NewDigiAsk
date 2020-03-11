//
//  KerangkangViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class KeranjangViewController: UIViewController {
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
        checkOutButton.addTarget(self, action: #selector(checkOutAction), for: .touchUpInside)
        

        // Do any additional setup after loading the view.
    }
    

    @objc func checkOutAction(sender: Any){
        let checkOutVC = storyboard?.instantiateViewController(identifier: "CheckOutKeranjangViewController")  as! CheckOutKeranjangViewController
        checkOutVC.modalPresentationStyle = .custom
        checkOutVC.transitioningDelegate = PresentationDelegate
        present(checkOutVC, animated: true, completion: nil)
    }
}
