//
//  JenisProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukViewController: UIViewController {
    let jenisProdukScrollView = UIScrollView()
    let namaProdukLabel = UILabel()
    let jenisProdukCOntainerView = UIView()
    let lineJenisProduk = UIView()
    let jenisProdukTable = UITableView()
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        jenisProdukTable.delegate = self
        jenisProdukTable.dataSource = self
        setupUI()
        view.layoutIfNeeded()
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func jenisProdukDetail(sender: Any){
        let jenisProdukDetailVC = self.storyboard?.instantiateViewController(identifier: "JenisProdukDetailViewController") as! JenisProdukDetailViewController
        jenisProdukDetailVC.modalPresentationStyle = UIModalPresentationStyle.automatic
        jenisProdukDetailVC.transitioningDelegate = PresentationDelegate
        jenisProdukDetailVC.modalPresentationStyle = .custom
        present(jenisProdukDetailVC, animated: true, completion: {})
        
    }

  
   

}
