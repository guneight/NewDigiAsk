//
//  SyaratdanKetentuanViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SyaratdanKetentuanViewController: UIViewController {
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
    let syaratDanKetentuanView = UIView()
    let SyaratDanKetentuanScrollView = UIScrollView()
    let syaratDanKetentuanContainerView = UIView()
    let syaratDanKetentuanLabel = UILabel()
    let detailSyaratdanKetentuanLabel = UILabel()
    let bacaSelengkapnyaLabel = UILabel()
    let setujuButton = UIButton()
    let setujuView = UIView()
    let syaratDanKetentuan = "Memberikan perlindungan atas risiko kematian, cacat tetap, biaya perawatan dan atau pengobatan yang secara langsung disebabkan suatu kecelakaan. Kecelakaan yaitu suatu kejadian atau peristiwa yang mengandung unsur kekerasan, baik bersifat fisik maupun kimia, yang datangnya secara tiba-tiba, termasuk juga kecelakaan yaitu yang disebabkan karena keracunan makanan, uap dan gas, jatuh ke dalam air atau tenggelam."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupNavBarSyaratdanKetentuan()
        view.layoutIfNeeded()
        setupAnimation()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        setujuButton.addTarget(self, action: #selector(setujuAction(sender:)), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(setujuAction(sender:)))
        setujuView.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
         setupAnimation()
    }
    
    @objc func setujuAction(sender: Any){
        let identitasPenanungVC = self.storyboard?.instantiateViewController(identifier: "IdentitasTertanggungdanPenerimaManfaatViewController") as! IdentitasTertanggungdanPenerimaManfaatViewController
        self.navigationController?.pushViewController(identitasPenanungVC, animated: true)
        
    }
    
    
    
}
