//
//  ProfileViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 03/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let menuProfile = ["Profile","List Tertanggung","List Penerima Manfaat","Polis","Monitoring Klaim", "Tentang Kami","Rate Us", "Keluar" ]
    let deskripsiMenuProfile = ["Atur email, password dan nomor telepon", "Daftar nama tertanggung","Daftar nama penerima manfaat", "Polis asuransi yang dimiliki","Daftar klaim asuransi yang dimiliki","Tentang Asusransi Askrindo", "Berikan penilaian untuk apliksi ini", "Keluar dari aplikasi"]
    let profileTable = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        setupUI()
        setupNavBar()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        profileTable.delegate = self
        profileTable.dataSource = self
        profileTable.register(profielTableViewCell.self, forCellReuseIdentifier: "profileCell")
        // Do any additional setup after loading the view.
    }
    

    
  
   

}
