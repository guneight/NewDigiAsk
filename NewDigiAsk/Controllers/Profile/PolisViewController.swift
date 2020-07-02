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
    let segmentedIndicatorLabel1 = UILabel()
    let segmentedIndicatorLabel2 = UILabel()
    let segmentedIndicatorLabel3 = UILabel()
    let segmentedIndicatorLabel4 = UILabel()
    let jumlahPolidPending : Int = 5
    var segmentedIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarPolis()
        setupUI()
        view.layoutIfNeeded()
        polisPendingTableView.delegate = self
        polisPendingTableView.dataSource = self
        polisManageSegmentControl.addTarget(self, action: #selector(segmentedAction(sender:)), for: .valueChanged)
        polisfilterButton.addTarget(self, action: #selector(polisFilterAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    @objc func segmentedAction (sender : UISegmentedControl){
        segmentedIndex = sender.selectedSegmentIndex
        polisPendingTableView.reloadData()
        print("Index : \(segmentedIndex)")
    }
    
    @objc func detailPolisRightButtonAction(sender : Any){
        let detailPolisVC  = storyboard?.instantiateViewController(identifier: "DetailPolisViewController") as! DetailPolisViewController
        navigationController?.pushViewController(detailPolisVC, animated: true)
    }
    
    @objc func namaProdukAction(sender : Any){
        let detailPolisVC  = storyboard?.instantiateViewController(identifier: "DetailPolisViewController") as! DetailPolisViewController
        navigationController?.pushViewController(detailPolisVC, animated: true)
    }
    
    @objc func polisFilterAction(sender: Any){
        let filterPolisVC = self.storyboard?.instantiateViewController(identifier: "FilterPolisViewController") as! FilterPolisViewController
        filterPolisVC.modalPresentationStyle = UIModalPresentationStyle.automatic
        filterPolisVC.transitioningDelegate = PresentationDelegate
        filterPolisVC.modalPresentationStyle = .custom
        present(filterPolisVC, animated: true, completion: {})
        
    }
}
