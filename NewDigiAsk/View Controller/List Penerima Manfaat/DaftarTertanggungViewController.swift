//
//  DaftarPenerimaManfaatViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DaftarTertanggungViewController: UIViewController {
    let daftarPenerimaManfaatBaseView = UIView()
    let daftarPenerimaManfaatTabelView = UITableView()
    let searchBar = UISearchBar()
    let underSearchBar = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarDaftarPenerimaManfaat()
        setupUI()
        view.layoutIfNeeded()
        daftarPenerimaManfaatTabelView.delegate = self
        daftarPenerimaManfaatTabelView.dataSource = self
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
