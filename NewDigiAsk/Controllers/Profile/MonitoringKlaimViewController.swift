//
//  MonitoringKlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class MonitoringKlaimViewController: UIViewController {
       let klaimPendingTableView = UITableView()
       let namaManageSegmenLabel = UILabel()
       let klaimManageSegmentControl = UISegmentedControl(items: ["PENGAJUAN", "PROSES","BERHASIL","TOLAK"])
       let klaimSearchBar = UISearchBar()
       let klaimfilterView = UIView()
       let klaimfilterButton = UIButton()
       let klaimEmptyImage = UIImageView()
       let klaimEmptyLabel = UILabel()
       
       let segmentedControlIndicator: UIStackView = {
       let stackViewCV = UIStackView()
       stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
       stackViewCV.distribution = UIStackView.Distribution.fillEqually
       stackViewCV.alignment = UIStackView.Alignment.center
       stackViewCV.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
       stackViewCV.translatesAutoresizingMaskIntoConstraints = false
       stackViewCV.spacing = 1
       return stackViewCV
       }()
    
        let headerNomorKlaim = UILabel()
        let nomorKlaim = UILabel()
       let segmentedIndicatorLabel1 = UILabel()
       let segmentedIndicatorLabel2 = UILabel()
       let segmentedIndicatorLabel3 = UILabel()
       let segmentedIndicatorLabel4 = UILabel()
       let jumlahKlaimPending : Int = 5
       var segmentedIndex : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        klaimPendingTableView.dataSource = self
        klaimPendingTableView.delegate  = self
        setupNavBarKlaim()
        setupUI()
        klaimManageSegmentControl.addTarget(self, action: #selector(segmentedAction), for: .valueChanged)
        // Do any additional setup after loading the view.
    }
    
    @objc func segmentedAction (sender : UISegmentedControl){
        segmentedIndex = sender.selectedSegmentIndex
        klaimPendingTableView.reloadData()
        print("Index : \(segmentedIndex)")
    }
    
    @objc func rightButtonAction(sender : Any){
        let detailPolisKlaimVC = storyboard?.instantiateViewController(identifier: "DetailPolisKlaimViewController") as! DetailPolisKlaimViewController
        navigationController?.pushViewController(detailPolisKlaimVC, animated: true)
        
    }
    
    @objc func namaAsuransiAction(sender : Any){
        let detailPolisKlaimVC = storyboard?.instantiateViewController(identifier: "DetailPolisKlaimViewController") as! DetailPolisKlaimViewController
        navigationController?.pushViewController(detailPolisKlaimVC, animated: true)
        
    }

   
}
