//
//  KartuKeluargaViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class KartuKeluargaViewController: UIViewController {
    let kartuKeluargaView = UIView()
    let datadiSiapkan = UILabel()
    let kartuKeluargaLabel  = UILabel()
    let deskripsiKartuKeluargaLabel = UILabel()
    let cameraIconImage = UIImageView()
    let keteranganFoto = UILabel()
    let lanjutButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIKartuKeluarga()
        setupNavBar()
        view.layoutIfNeeded()
        lanjutButton.addTarget(self, action: #selector(lanjutAction(sender:)), for: .touchUpInside)
        ambilFotoKK()
        // Do any additional setup after loading the view.
    }
    


    // MARK: lanjutButton Action

    @objc func lanjutAction(sender: Any){
        let submitKlaimVC = storyboard?.instantiateViewController(identifier: "SubmitKlaimViewController")  as! SubmitKlaimViewController
        navigationController?.pushViewController(submitKlaimVC, animated: true)
    }
}
