//
//  ProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProdukViewController: UIViewController {
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
    var PresentationDelegate = PresentationManager()

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
