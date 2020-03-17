//
//  GaleryViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class GaleryViewController: UIViewController {
    let galeryScrollView = UIScrollView()
    let galeryView = UIView()
    let listGaleryTable = UITableView()
    let galeryImage = UIImageView()
    let titleGaleryLabel = UILabel()
    let timeGaleryIcon = UILabel()
    let tanggalGalery = UILabel()
    let shareGaleryButton = UIButton()
    let underlineGalery = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
