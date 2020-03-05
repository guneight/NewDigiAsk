//
//  KlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class KlaimViewController: UIViewController {
    let prosesMonitoring = UISegmentedControl()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarKlaim()
        setupUI()
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
