//
//  JenisProdukDetailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukDetailViewController: UIViewController {
    let JenisProdukContainerView = UIView()
    let iconJenisProdukDetailImage = UIImageView()
    let namajenisProdukDetailLabel = UILabel()
    let startHargaProdukDetailLabel = UILabel()
    let lineHargaProdukDetail = UIView()
    let deskripsiJenisProdukDetail = UILabel()
    let daftarPremiTable = UITableView()

    override func viewDidLoad() {
        view.backgroundColor = .gray
        daftarPremiTable.delegate = self
        daftarPremiTable.dataSource = self
        view.layoutIfNeeded()
        setupUI()
        super.viewDidLoad()

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
