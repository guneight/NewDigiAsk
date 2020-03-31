//
//  ListPenerimaManfaatVCViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ListTertanggungViewController: UIViewController {
    let listPenerimaManfaatBaseView = UIView()
    let listPenerimaManfaatTableVIew = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarListPenerimaManfaat()
        setupUI()
        listPenerimaManfaatTableVIew.delegate = self
        listPenerimaManfaatTableVIew.dataSource = self
        view.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
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
