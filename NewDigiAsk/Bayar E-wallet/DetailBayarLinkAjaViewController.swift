//
//  DetailBayarLinkAjaViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailBayarLinkAjaViewController: UIViewController {
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
    
    let detailBayarBaseView = UIView()
    let masukLabel = UILabel()
    let linkAjaIconImage = UIImageView()
    let nomorLinkAjaTextField = UITextField()
    let pinTextField = UITextField()
    let sisaWaktuLabel = UILabel()
    let digiaskLogoImage = UIImageView()
    let totalView = UIView()
    let totalLabel = UILabel()
    let nilaiTotalLabel = UILabel()
    let lihatTransaksiLabel = UILabel()
    let bayarButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarDetailBayarLinkAja()
        bayarButton.addTarget(self, action: #selector(bayarAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Bayar
    @objc func bayarAction(){
        let selesaiBayarVC = storyboard?.instantiateViewController(identifier: "SelesaiBayarLinkAjaViewController") as! SelesaiBayarLinkAjaViewController
        self.navigationController?.pushViewController(selesaiBayarVC, animated: true)
    }
    

}
