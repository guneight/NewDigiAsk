//
//  LupaPasswordViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 30/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class LupaPasswordViewController: UIViewController {
    let lupaPasswordBaseView = UIView()
    let kesulitanLabel = UILabel()
    let alamatEmailLabel = UILabel()
    let emailTextField = UITextField()
    let underlineEmail = UIView()
    let gantiKataSandiButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarLupaPassword()
        view.layoutIfNeeded()
        gantiKataSandiButton.addTarget(self, action: #selector(gantiKataSandiAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func gantiKataSandiAction(){
        let loginVC = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(loginVC, animated: true)
    }

}
