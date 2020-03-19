//
//  GaleryViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class GaleryViewController: UIViewController {
    let galeryView = UIView()
    let listGaleryTable = UITableView()
    
    let galeryPhoto = ["galery1","galery2", "galery3", "galery4", "galery5","galery6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        listGaleryTable.delegate = self
        listGaleryTable.dataSource = self
        setupUIGalery()
        setupNavBarGalery()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
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
