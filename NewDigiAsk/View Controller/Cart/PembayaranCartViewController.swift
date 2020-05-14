//
//  PembayaranCartViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PembayaranCartViewController: UIViewController {
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
    let pembayaranView = UIView()
    let totalPembayaranView = UIView()
    let totalPemabayaranLabel = UILabel()
    let nilaiTotalPembayaranLabel = UILabel()
    let pilihMetodePembayaranLabel = UILabel()
    let virtualAccountLabel = UILabel()
    let virtualAccountView = UIView()
    let bcaBaseView = UIView()
    let iconBCAimage = UIImageView()
    let iconMandiriImage = UIImageView()
    let iconBNIImage = UIImageView()
    let virtualAccountBCALabel = UILabel()
    let virtualAccountMandiriLabel = UILabel()
    let virtualAccountBNILabel = UILabel()
    let rightButtonBCA = UIButton()
    let rightButtonMandiri = UIButton()
    let rightButtonBNI = UIButton()
    let KartuKreditLabel = UILabel()
    let kartuKreditView = UIView()
    let iconKartuKreditImage = UIImageView()
    let nomorkartuKreditLabel = UILabel()
    let rightButtonKartuKredit = UIButton()
    let uangElektronikLabel = UILabel()
    let uangElektronikView = UIView()
    let iconOVOImage = UIImageView()
    let iconGopayImage = UIImageView()
    let iconLinAjaImage = UIImageView()
    let ovoLabel = UILabel()
    let gopayLabel = UILabel()
    let linkAjaLabel = UILabel()
    let rigthButtonOVO = UIButton()
    let rigthButtonGopay = UIButton()
    let rigthButtonLinkAja = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarPembayaranCart()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(bcaAction(sender:)))
        bcaBaseView.addGestureRecognizer(gesture)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
        setupNavBarPembayaranCart()
        view.layoutIfNeeded()
    }
    
    @objc func bcaAction(sender : Any) {
        let bayarCartVC = storyboard?.instantiateViewController(identifier: "BayarCartViewController") as! BayarCartViewController
        self.navigationController?.pushViewController(bayarCartVC, animated: true)
    }
    
}
