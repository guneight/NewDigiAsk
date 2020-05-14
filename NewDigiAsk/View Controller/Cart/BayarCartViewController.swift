//
//  BayarCartViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class BayarCartViewController: UIViewController {
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
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
    
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
