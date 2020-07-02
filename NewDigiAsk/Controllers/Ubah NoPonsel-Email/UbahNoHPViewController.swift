//
//  UbahNoHPViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class UbahNoHPViewController: UIViewController {
    let ubahNoHPBaseView = UIView()
    let nomorPonselLamaLabel = UILabel()
    let nomorPonselLamaTextField = UITextField()
    let underlineNomorPonselLama = UIView()
    let alertNomorPonselLama = UILabel()
    
    let nomorPonselBaruLabel = UILabel()
    let nomorPonselBaruTextField = UITextField()
    let underLineNomorPonselBaru = UIView()
    let alertNomorPonselBaru = UILabel()
    
    let selanjutnyaButtons = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarUbahNoHP()
        view.layoutIfNeeded()
        selanjutnyaButtons.addTarget(self, action: #selector(selanjutnyaAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    @objc func selanjutnyaAction(sender: UIButton){
        print("SELANJUTNYA")
        let verifikasiVC = storyboard?.instantiateViewController(withIdentifier: "VerifikasiViewController") as! VerifikasiViewController
        self.navigationController?.pushViewController(verifikasiVC, animated: true)
    }

}
