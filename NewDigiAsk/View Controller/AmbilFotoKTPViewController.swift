//
//  AmbilFotoKTPViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import AVFoundation
class AmbilFotoKTPViewController: UIViewController {
    let ambilKTPView = UIView()
    let datadiSiapkan = UILabel()
    let kartuIdentitasLabel  = UILabel()
    let deskripsiKartuIdentitasLabel = UILabel()
    let cameraIconImage = UIImageView()
    let keteranganFoto = UILabel()
    let lanjutButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUIAmbilKTP()
        view.layoutIfNeeded()
        ambilFotoKTP()
        lanjutButton.addTarget(self, action: #selector(lanjutAction(sender:)), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation
    @objc func lanjutAction(sender : Any){
        let suratBuktiKematinVC = storyboard?.instantiateViewController(identifier: "SuratBuktiKematianViewController") as! SuratBuktiKematianViewController
        navigationController?.pushViewController(suratBuktiKematinVC, animated: true)
        print("presss")
    }

}
