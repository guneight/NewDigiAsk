//
//  HubungiKamiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class HubungiKamiViewController: UIViewController {
    let hubungiKamiLabel = UILabel()
    let hubungiKami7hariLabel = UILabel()
    let teleponBaseView = UIView()
    let teleponIconImage = UIImageView()
    let nomorTeleponLabel = UILabel()
    let chatBaseView = UIView()
    let chatIconImage = UIImageView()
    let chatLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarHubungiKami()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
    
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
