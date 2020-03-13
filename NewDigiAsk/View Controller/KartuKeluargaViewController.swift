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
