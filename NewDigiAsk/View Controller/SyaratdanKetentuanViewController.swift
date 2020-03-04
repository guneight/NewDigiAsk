//
//  SyaratdanKetentuanViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SyaratdanKetentuanViewController: UIViewController {
    let SyaratDanKetentuanScrollView = UIScrollView()
    let syaratDanKetentuanContainerView = UIView()
    let syaratDanKetentuanLabel = UILabel()
    let detailSyaratdanKetentuanLabel = UILabel()
    let bacaSelengkapnyaLabel = UILabel()
    let setujuButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.layoutIfNeeded()
        setujuButton.addTarget(self, action: #selector(setujuAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    @objc func setujuAction(sender: Any){
        let identitasPenanungVC = self.storyboard?.instantiateViewController(identifier: "IdentitasTertanggungdanPenerimaManfaatViewController") as! IdentitasTertanggungdanPenerimaManfaatViewController
//               identitasPenanungVC.modalPresentationStyle = UIModalPresentationStyle.automatic
               identitasPenanungVC.transitioningDelegate = PresentationDelegate
               identitasPenanungVC.modalPresentationStyle = .custom
               present(identitasPenanungVC, animated: true, completion: {})
    }

}
