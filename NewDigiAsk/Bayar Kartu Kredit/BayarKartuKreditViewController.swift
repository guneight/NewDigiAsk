//
//  BayarKartuKreditViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class BayarKartuKreditViewController: UIViewController {
    
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
    
    let kartuKreditScrollView = UIScrollView()
    let kartuKreditBaseView = UIView()
    let totalPembayaranView = UIView()
    let totalPembayaranLabel = UILabel()
    let nilaiTotalPembayaranLabel = UILabel()
    let rightButtonImage = UIImageView()
    
    let kartuKreditView = UIView()
    let kartuKreditDebitLabel = UILabel()
    let underlineKartuKredit = UIView()
    let masterCardIcon = UIImageView()
    let masterCardLabel = UILabel()
    let underlineMastercard = UIView()
    let nomorKartuLabel = UILabel()
    let nomorKartuTextField = UITextField()
    let underlineNomorKartu = UIView()
    let masaBerlakuLabel = UILabel()
    let CCVLabel = UILabel()
    let mmTextfield = UITextField()
    let yyTextfield = UITextField()
    let CVVLabel = UILabel()
    let CVVTextfielsd = UITextField()
    let simpanNomorKartuButton = UIButton()
    let simpanNomorkartuLabel = UILabel()
    let pilihPembayaranLabel = UILabel()
    let pilihPembayaranTetxfield = UITextField()
    let dropDownImage = UIImageView()
    let bayarButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarBayarKartuKredit()
        bayarButton.addTarget(self, action: #selector(bayarAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    @objc func bayarAction(){
        let selesaiBayarVC = storyboard?.instantiateViewController(identifier: "SelesaiBayarKartuKreditViewController") as! SelesaiBayarKartuKreditViewController
        self.navigationController?.pushViewController(selesaiBayarVC, animated: true)
    }
    
    
    
}
