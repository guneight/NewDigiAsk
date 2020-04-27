//
//  BayarCartViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class BayarCartViewController: UIViewController {
    let bayarView = UIView()
    let totalBayarView = UIView()
    let totalBayarLabel = UILabel()
    let nilaiTotalLabel = UILabel()
    let metodeBayarView = UIView()
    let iconImageMetodeBayar = UIImageView()
    let namaMetodeBayar = UILabel()
    let lineMetodeBayar = UIImageView()
    let deskripsiMetodePembayaran = UILabel()
    let bayarButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarBayarCart()
        bayarButton.addTarget(self, action:#selector(bayarAction) , for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
        setupNavBarBayarCart()
        view.layoutIfNeeded()
    }
    
    @objc func bayarAction(){
        let detailBayarCartVC = storyboard?.instantiateViewController(identifier: "DetailBayarCartViewController") as! DetailBayarCartViewController
        self.navigationController?.pushViewController(detailBayarCartVC, animated: true)
    }
    
}
