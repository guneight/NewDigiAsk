//
//  BayarViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class BayarViewController: UIViewController {
    let totalBayarView = UIView()
    let totalBayarLabel = UILabel()
    let nilaiTotalLabel = UILabel()
    let metodeBayarView = UIView()
    let iconImageMetodeBayar = UIImageView()
    let namaMetodeBayar = UILabel()
    let lineMetodeBayar = UIImageView()
    let deskripsiMetodePembayaran = UILabel()
    let bayarButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        setupUI()
        bayarButton.addTarget(self, action: #selector(bayarAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func bayarAction (sender : Any){
        let detailBayarVC = storyboard?.instantiateViewController(identifier: "DetailBayarViewController")  as! DetailBayarViewController
        detailBayarVC.modalPresentationStyle = .custom
        detailBayarVC.transitioningDelegate = PresentationDelegate
        present(detailBayarVC, animated: true, completion: nil)
        
    }
}
