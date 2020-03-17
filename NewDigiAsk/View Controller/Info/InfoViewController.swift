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
