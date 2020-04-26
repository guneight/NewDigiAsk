//
//  LengkapiDataEmailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 23/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class LengkapiDataEmailViewController: UIViewController {
    let lengkapiDataEmailBaseView = UIView()
    let masukDenganEmailLabel = UILabel()
    let emailTextField = UITextField()
    let underlineEmail = UIView()
    let aktivasiLabel = UILabel()
    let namaLengkapLabel = UILabel()
    let namaLengkaTextField = UITextField()
    let underlineNamaLengkap = UIView()
    let kataSandiLabel = UILabel()
    let kataSandiTextField = UITextField()
    let underlineKataSandi = UIView()
    let minimalKarakter = UILabel()
    let ulangKataSandi = UILabel()
    let ulangKataSandiTextField = UITextField()
    let underlineUlangKataSandi = UIView()
    let daftarButton = UIButton()
    let syaratLabel = UILabel()
    
    var loginStatus : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupUINavBarLengkapiData()
        daftarButton.addTarget(self, action: #selector(daftarAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    
    @objc func daftarAction(sender : UIButton){
        let homeVC = self.navigationController?.viewControllers.first as! HomeMenuViewController
        homeVC.loginStatus = 1
        self.navigationController?.popToRootViewController(animated: true)
    }
   

}
