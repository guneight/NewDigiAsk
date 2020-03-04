//
//  DaftarViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 19/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DaftarViewController: UIViewController {
    let scrollViewDaftar = UIScrollView()
    let viewDaftar = UIView()
    let buttonBackNav = UIButton()
    let labelEmail = UILabel()
    let labelTextfieldEmail = UILabel()
    let textFieldEmail = UITextField()
    let buttonDaftar = UIButton()
    let labelMasukDengan = UILabel()
    let buttonSingInGoogle = UIButton()
    let imageViewGoogle = UIImageView()
    let labelSingInGoogle = UILabel()
    let labelSudahPunyaAkun = UILabel()
    let masukButton = UIButton()
    let vc = DaftarViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        // Do any additional setup after loading the view.
        setupUIDaftarVC()
        self.view.layoutIfNeeded()
        scrollViews()
        formDaftar()
        buttonDaftar.addTarget(self, action: #selector(daftarButtonAction(sender:)), for: .touchUpInside)
    }
    


    // MARK: - alert Nomor HP
    
    @objc func daftarButtonAction(sender: Any){
        let alertNoHp = UIAlertController(title: "1234567890", message: "Apakah nomor ponsel Anda sudah benar?", preferredStyle: .alert)
        alertNoHp.addAction(UIAlertAction(title: "UBAH", style: .cancel, handler: nil))
        alertNoHp.addAction(UIAlertAction(title: "BENAR", style: .default, handler: {(action)-> Void in
            let profileVC = self.storyboard?.instantiateViewController(identifier: "VerifikasiViewController")  as! VerifikasiViewController
            self.navigationController?.pushViewController(profileVC, animated: true)
            
        }))
        self.present(alertNoHp, animated: true)
    }
 

}
