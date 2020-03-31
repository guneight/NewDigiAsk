//
//  NotifikasiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 31/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class NotifikasiViewController: UIViewController {
    let notifikasiBaseView = UIView()
    let notifikasiListTable = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarNotifikasi()
        view.layoutIfNeeded()
        notifikasiListTable.delegate = self
        notifikasiListTable.dataSource  = self
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
