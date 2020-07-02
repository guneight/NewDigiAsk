//
//  KlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class KlaimViewController: UIViewController {
    let polisPendingTableView = UITableView()
    let namaManageSegmenLabel = UILabel()
    let polisSearchBar = UISearchBar()
    let polisfilterView = UIView()
    let polisfilterButton = UIButton()
    let polisEmptyImage = UIImageView()
    let polisEmptyLabel = UILabel()
    let jumlahPolidPending : Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarPolis()
        setupUI()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        setupNavBarPolis()
        setupUI()
        view.layoutIfNeeded()
        polisPendingTableView.delegate = self
        polisPendingTableView.dataSource = self
    }
    
    // MARK: - Navigation
    
    @objc func klaimButtonAction (sender: Any){
        let prosesKlaimVC = storyboard?.instantiateViewController(identifier: "ProsesKlaimViewController") as! ProsesKlaimViewController
        navigationController?.pushViewController(prosesKlaimVC, animated: true)
    }
    

}
