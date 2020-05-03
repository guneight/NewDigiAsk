//
//  SyaratdanKetentuanViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SyaratdanKetentuanViewController: UIViewController {
    let syaratDanKetentuanView = UIView()
    let SyaratDanKetentuanScrollView = UIScrollView()
    let syaratDanKetentuanContainerView = UIView()
    let syaratDanKetentuanLabel = UILabel()
    let detailSyaratdanKetentuanLabel = UILabel()
    let bacaSelengkapnyaLabel = UILabel()
    let setujuButton = UIButton()
    let syaratDanKetentuan = "Memberikan perlindungan atas risiko kematian, cacat tetap, biaya perawatan dan atau pengobatan yang secara langsung disebabkan suatu kecelakaan. Kecelakaan yaitu suatu kejadian atau peristiwa yang mengandung unsur kekerasan, baik bersifat fisik maupun kimia, yang datangnya secara tiba-tiba, termasuk juga kecelakaan yaitu yang disebabkan karena keracunan makanan, uap dan gas, jatuh ke dalam air atau tenggelam."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarSyaratdanKetentuan()
        view.layoutIfNeeded()
        setujuButton.addTarget(self, action: #selector(setujuAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    @objc func setujuAction(sender: Any){
        let identitasPenanungVC = self.storyboard?.instantiateViewController(identifier: "IdentitasTertanggungdanPenerimaManfaatViewController") as! IdentitasTertanggungdanPenerimaManfaatViewController
        self.navigationController?.pushViewController(identitasPenanungVC, animated: true)
            
    }

}
