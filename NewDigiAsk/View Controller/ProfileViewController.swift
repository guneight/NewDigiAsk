//
//  ProfileViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 03/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileTable = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        setupUI()
        setupUIDaftarVC()
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
