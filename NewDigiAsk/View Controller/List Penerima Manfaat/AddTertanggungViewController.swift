//
//  AddPenerimaManfaatViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class AddTertanggungViewController: UIViewController {
    let addPenerimaManfaatBaseView = UIView()
    let namaLengkapLabel = UILabel()
    let namaLengkapTextField = UITextField()
    let underlineNamaLengkap = UIView()
    let nomorKTPLLabel = UILabel()
    let nomorKTPTetxField = UITextField()
    let underlineNomorKTP = UIView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let underlineEmail = UIView()
    let nomorTeleponLabel = UILabel()
    let nomorTeleponTextField = UITextField()
    let underlineNomorTelepon = UIView()
    let simpanButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarAddPenerimaManfaat()
        view.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
