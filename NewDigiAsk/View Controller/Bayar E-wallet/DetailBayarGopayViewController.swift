//
//  DetailBayarGopayViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 14/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailBayarGopayViewController: UIViewController {
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
    
    let gopayBaseView = UIView()
    let totalPembayaranView = UIView()
    let totalPembayaranLabel = UILabel()
    let nilaiTotalPembayaranLabel = UILabel()
    let detailPenerimaView = UIView()
    let detailPenerimaLabel = UILabel()
    let logoDigiAskImage = UIImageView()
    let termConditionIcon  = UIImageView()
    let termConditionLabel = UILabel()
     
    let gopayView = UIView()
    let gopayLogoImage = UIImageView()
    let gopayLabel = UILabel()
    let payLaterLabel = UILabel()
    let useLabel = UILabel()
    let payNowView = UIView()
    let payNowLabel = UILabel()
    let nominalLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarDetailBayarGopay()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(payNowAction))
        payNowView.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    
    
     // MARK: - Pay now
    
    @objc func payNowAction (){
        let selesaiBayarVC = storyboard?.instantiateViewController(identifier: "SelesaiBayarEwalletViewController") as! SelesaiBayarEwalletViewController
        selesaiBayarVC.selesaiBayarSelected = 1
        self.navigationController?.pushViewController(selesaiBayarVC, animated: true)
    }
    
    
}
