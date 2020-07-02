//
//  UbahEmailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class UbahEmailViewController: UIViewController {
    let ubahEmailBaseView = UIView()
    let EmailLamaLabel = UILabel()
    let EmailLamaTextField = UITextField()
    let underlineEmailLama = UIView()
    let alertEmailLama = UILabel()
    
    let EmailBaruLabel = UILabel()
    let EmailBaruTextField = UITextField()
    let underLineEmailBaru = UIView()
    let alertEmailBaru = UILabel()
    
    let selanjutnyaButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarUbahEmail()
        selanjutnyaButton.addTarget(self, action: #selector(selanjutnyaAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

     @objc func selanjutnyaAction(sender :UIButton){
        let verifikasiVC = storyboard?.instantiateViewController(identifier: "VerifkasiEmailViewController") as! VerifkasiEmailViewController
           self.navigationController?.pushViewController(verifikasiVC, animated: true)
      
       }

}
