//
//  ProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProdukViewController: UIViewController {
    
    override func viewDidLoad() {
        produkTable.delegate = self
        produkTable.dataSource = self
        produkTable.reloadData()
        setupNavBar()
        setupUI()
        view.layoutIfNeeded()
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        // Do any additional setup after loading the view.
    }
    


}
