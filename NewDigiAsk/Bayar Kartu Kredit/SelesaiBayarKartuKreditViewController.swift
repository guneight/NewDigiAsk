//
//  SelesaiBayarKartuKreditViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SelesaiBayarKartuKreditViewController: UIViewController {
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
    
    let selesaiBayarBaseView = UIView()
    let transaksiView = UIView()
    let terimakasihLabel = UILabel()
    let nomorTransaksiHeaderLabel = UILabel()
    let nomorTransaksiLabel = UILabel()
    let nomorPengajuanHeaderLabel = UILabel()
    let nomorPengajuanLabel = UILabel()
    let lihatTransaksiButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarBayarKartuKredit()
        lihatTransaksiButton.addTarget(self, action: #selector(lihatTransaksiAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    //MARK:- Lihat Transaksi
    @objc func lihatTransaksiAction(){
        let polisVC = storyboard?.instantiateViewController(identifier: "PolisViewController") as! PolisViewController
        self.navigationController?.pushViewController(polisVC, animated: true)
    }

}
