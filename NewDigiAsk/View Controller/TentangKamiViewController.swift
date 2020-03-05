//
//  TentangKamiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class TentangKamiViewController: UIViewController {
    let tentangKamiScrollView = UIScrollView()
    let tentangKamiBaseView = UIView()
    let logoImage = UIImageView()
    let attributImage = UIImageView()
    let tentangKamiWhiteView = UIView()
    let tentangKamiLabel = UILabel()
    let profilePerusahaan = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUI()
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
