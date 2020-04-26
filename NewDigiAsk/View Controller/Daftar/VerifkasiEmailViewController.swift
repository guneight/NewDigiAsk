//
//  VerifkasiEmailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 23/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class VerifkasiEmailViewController: UIViewController {
    let verifikasiEmailView = UIView()
    let melaluiEmailBaseView = UIView()
    let titleVerifikasiLabel = UILabel()
    let emailIconImage = UIImageView()
    let melaluiemailLabel = UILabel()
    let emailLabel = UILabel()
    
    var loginStatus : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupUINavBarVerEmail()
        self.navigationController?.navigationBar.isHidden = false
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(verifikasiEmailAction(sender:)))
        melaluiEmailBaseView.addGestureRecognizer(tapGesture)
        print("VerifkasiEmailViewController")
        // Do any additional setup after loading the view.
    }
    


    // MARK: - Email Action
    
    @objc func verifikasiEmailAction(sender : Any){
        let inputVerifikasiVC = storyboard?.instantiateViewController(identifier: "InputKodeVerifikasiEmailViewController") as! InputKodeVerifikasiEmailViewController
        inputVerifikasiVC.loginStatus = loginStatus
        navigationController?.pushViewController(inputVerifikasiVC, animated: true)
    }


}
