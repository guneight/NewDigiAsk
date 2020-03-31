//
//  ProsesKlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProsesKlaimViewController: UIViewController {
    let prosesdKlaimScrollView = UIScrollView()
    let prosesKlaimView = UIView()
    let dataDisiapkanLabel = UILabel()
    let kartuIdentitasLabel = UILabel()
    let deskripsiKsrtuIdentitasLabel = UILabel()
    let suratBuktiKematianLabel = UILabel()
    let deskripsiBuktiKematianLabel = UILabel()
    let kartuKeluargaLabel = UILabel()
    let deskripsiKartuKeluarga = UILabel()
    
    let dataPolisView = UIView()
    let headerNomorPolisLabel = UILabel()
    let nomorPolisLabel = UILabel()
    let lineNomortTransaksi = UIView()
    let headerStatusPolis = UILabel()
    let statusPolisLabel = UILabel()
    let lineStatusPolis = UIView()
    let headerMasaBerkaku = UILabel()
    let masaBerlakuLabel = UILabel()
    
    let dataKlaimView = UIView()
    let dataKlaimLabel = UILabel()
    let lineDataKlaim = UIView()
    let typeKlaim = UILabel()
    let namaTypeKlaim = UILabel()
    
    let lanjutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUIProsesKlaim()
        view.layoutIfNeeded()
       
        lanjutButton.addTarget(self, action: #selector(lanjutAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

   
    // MARK: - Navigation
    @objc func lanjutAction(sender : Any){
        let ambilFotoKTPVC = storyboard?.instantiateViewController(identifier: "AmbilFotoKTPViewController") as! AmbilFotoKTPViewController
        navigationController?.pushViewController(ambilFotoKTPVC, animated: true)
    }

}
