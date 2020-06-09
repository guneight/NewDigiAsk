//
//  InfoViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    let infoBaseView = UIView()
    let infoImage  = UIImageView()
    let titleInfoLabel = UILabel()
    let timeIconImage  = UIImageView()
    let tanggalInfoLabel = UILabel()
    let bodyInfoLabel = UILabel()
    let underline = UILabel()
    
    let listInfoTable = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIInfo()
        setupNavBarInfo()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        titleInfoLabel.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(goToDetailInfo))
        titleInfoLabel.addGestureRecognizer(tapGesture)
    }
    
    @objc func  goToDetailInfo(){
        let infoDetailVC = storyboard?.instantiateViewController(identifier: "InfoDetailViewController") as! InfoDetailViewController
        navigationController?.pushViewController(infoDetailVC, animated: true)
    }
}
