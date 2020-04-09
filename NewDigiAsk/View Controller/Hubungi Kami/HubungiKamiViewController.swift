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
        let tapGesture  = UITapGestureRecognizer.init(target: self, action: #selector(teleponAction(sender:)))
        teleponBaseView.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Action
    @objc func teleponAction(sender: Any){
        let detailHubungiKamiVC = storyboard?.instantiateViewController(identifier: "DetailHubungiKamiViewController") as! DetailHubungiKamiViewController
        navigationController?.pushViewController(detailHubungiKamiVC, animated: true)
    }
    
    

    
}
