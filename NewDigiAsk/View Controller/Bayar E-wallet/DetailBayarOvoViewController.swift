//
//  DetailBayarOvoViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 14/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import PinCodeTextField
class DetailBayarOvoViewController: UIViewController {
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
    
    let ovoBaseView = UIView()
    let verifikasiOvoLabel = UILabel()
    let ovoIconImage = UIImageView()
    let masukkanKodeOvoLabel = UILabel()
    let kodeOvoView : UIView = {
       let pinCode = PinCodeTextField()
        pinCode.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        pinCode.fontSize = 30
        pinCode.underlineColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        pinCode.underlineHeight = 1
        return pinCode
    }()
    let bayarButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarDetailBayarOvo()
        bayarButton.addTarget(self, action: #selector(bayarAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    
    
     // MARK: - Bayar
    @objc func bayarAction (){
        let selesaiBayarVC = storyboard?.instantiateViewController(identifier: "SelesaiBayarEwalletViewController") as! SelesaiBayarEwalletViewController
        selesaiBayarVC.selesaiBayarSelected = 0
        self.navigationController?.pushViewController(selesaiBayarVC, animated: true)
    }
    
}
