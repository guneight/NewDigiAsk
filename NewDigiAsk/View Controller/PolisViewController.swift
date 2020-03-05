//
//  PolisViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PolisViewController: UIViewController {
    let polisPendingTableView = UITableView()
    let namaManageSegmenLabel = UILabel()
    let polisManageSegmentControl = UISegmentedControl(items: ["PENDING", "POLIS","EXPIRED","DIBATALKAN"])
    let polisSearchBar = UISearchBar()
    let polisfilterView = UIView()
    let polisfilterButton = UIButton()
    let polisEmptyImage = UIImageView()
    let polisEmptyLabel = UILabel()
    
    let jumlahPolidPending : Int = 0
    var segmentedIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarPolis()
        setupUI()
        view.layoutIfNeeded()
        polisPendingTableView.delegate = self
        polisPendingTableView.dataSource = self
        polisManageSegmentControl.addTarget(self, action: #selector(segmentedAction(sender:)), for: .valueChanged)
        // Do any additional setup after loading the view.
    }
    

    @objc func segmentedAction (sender : UISegmentedControl){
        segmentedIndex = sender.selectedSegmentIndex
        polisPendingTableView.reloadData()
        print("Index : \(segmentedIndex)")
    }

}
