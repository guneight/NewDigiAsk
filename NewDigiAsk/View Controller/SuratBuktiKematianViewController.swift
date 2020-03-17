//
//  SuratBuktiKematianViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SuratBuktiKematianViewController: UIViewController {
    let suratKematianView = UIView()
    let datadiSiapkan = UILabel()
    let suratBuktiKetianLabel  = UILabel()
    let deskripsiSuratKematianLabel = UILabel()
    let cameraIconImage = UIImageView()
    let keteranganFoto = UILabel()
    let lanjutButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUISuratBuktiKematian()
        setupNavBar()
        view.layoutIfNeeded()
        lanjutButton.addTarget(self, action: #selector(lanjutAction(sender:)), for: .touchUpInside)
        ambilFotoSuratBukti()
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation
    @objc func lanjutAction(sender : Any){
        let kartuKematianVC = storyboard?.instantiateViewController(identifier:  "KartuKeluargaViewController") as! KartuKeluargaViewController
        navigationController?.pushViewController(kartuKematianVC, animated: true)
    }

}
