//
//  ExtensionMonitoringKlaimVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension MonitoringKlaimViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jumlahKlaimPending
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "klaimCell", for: indexPath) as! PolisdanKlaimTableViewCell
        cell.klaimButton.isHidden = true
        cell.contentView.addSubview(headerNomorKlaim)
        UIHelper.makeLabel(label: headerNomorKlaim, corner: 0, allignment: .left, leadingAnchor: cell.leadingAnchor, trailingAnchor: cell.trailingAnchor, topAnchor: cell.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNomorKlaim, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Klaim", kerning: 0.12)
        if segmentedIndex == 0{
            //            segmentedIndicatorLabel1.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            //            segmentedIndicatorLabel2.backgroundColor = .white
            //            segmentedIndicatorLabel3.backgroundColor = .white
            //            segmentedIndicatorLabel4.backgroundColor = .white
            cell.namaProdukLabel.text = "Asuransi Perdagangan"
            cell.iconProdukImage.image = UIImage(named: "\(namaProdukArray[indexPath.row])")
        }else if segmentedIndex == 1 {
            //            segmentedIndicatorLabel1.backgroundColor = .white
            //            segmentedIndicatorLabel2.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            //            segmentedIndicatorLabel3.backgroundColor = .white
            //            segmentedIndicatorLabel4.backgroundColor = .white
            cell.namaProdukLabel.text = "Asuransi Kecelakaan"
            
        }else if segmentedIndex == 2{
            //            segmentedIndicatorLabel1.backgroundColor = .white
            //            segmentedIndicatorLabel2.backgroundColor = .white
            //            segmentedIndicatorLabel3.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            //            segmentedIndicatorLabel4.backgroundColor = .white
            cell.namaProdukLabel.text = "Asuransi Jalan-Jalan"
            
        }else{
            //            segmentedIndicatorLabel1.backgroundColor = .white
            //            segmentedIndicatorLabel2.backgroundColor = .white
            //            segmentedIndicatorLabel3.backgroundColor = .white
            //            segmentedIndicatorLabel4.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            cell.namaProdukLabel.text = "Asuransi ngacap"
        }
        cell.backgroundColor = .white
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 265
    }
    
    
    func setupUI(){
        let width = view.frame.size.width
        let hegiht = view.frame.size.height
        view.backgroundColor = .white
        view.addSubview(klaimManageSegmentControl)
        klaimManageSegmentControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimManageSegmentControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            klaimManageSegmentControl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            klaimManageSegmentControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            klaimManageSegmentControl.heightAnchor.constraint(equalToConstant: 40)
        ])
        klaimManageSegmentControl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        klaimManageSegmentControl.selectedSegmentTintColor = .white
        klaimManageSegmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            
        //       klaimManageSegmentControl.selectedSegmentTintColor = .clear
        
        //       klaimManageSegmentControl.addSubview(segmentedControlIndicator)
        //       segmentedControlIndicator.translatesAutoresizingMaskIntoConstraints = false
        //       NSLayoutConstraint.activate([
        //           segmentedControlIndicator.leadingAnchor.constraint(equalTo: klaimManageSegmentControl.leadingAnchor),
        //           segmentedControlIndicator.trailingAnchor.constraint(equalTo: klaimManageSegmentControl.trailingAnchor),
        //           segmentedControlIndicator.heightAnchor.constraint(equalToConstant: 3),
        //           segmentedControlIndicator.bottomAnchor.constraint(equalTo: klaimManageSegmentControl.bottomAnchor)
        //       ])
        //
        //       segmentedControlIndicator.addArrangedSubview(segmentedIndicatorLabel1)
        //       segmentedIndicatorLabel1.translatesAutoresizingMaskIntoConstraints = false
        //       segmentedIndicatorLabel1.heightAnchor.constraint(equalToConstant: 3).isActive = true
        //       segmentedIndicatorLabel1.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        //
        //       segmentedControlIndicator.addArrangedSubview(segmentedIndicatorLabel2)
        //       segmentedIndicatorLabel2.translatesAutoresizingMaskIntoConstraints = false
        //       segmentedIndicatorLabel2.heightAnchor.constraint(equalToConstant: 3).isActive = true
        //
        //
        //       segmentedControlIndicator.addArrangedSubview(segmentedIndicatorLabel3)
        //       segmentedIndicatorLabel3.translatesAutoresizingMaskIntoConstraints = false
        //       segmentedIndicatorLabel3.heightAnchor.constraint(equalToConstant: 3).isActive = true
        //
        //
        //       segmentedControlIndicator.addArrangedSubview(segmentedIndicatorLabel4)
        //       segmentedIndicatorLabel4.translatesAutoresizingMaskIntoConstraints = false
        //       segmentedIndicatorLabel4.heightAnchor.constraint(equalToConstant: 3).isActive = true
        
        view.addSubview(klaimSearchBar)
        klaimSearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimSearchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 21),
            klaimSearchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -21),
            klaimSearchBar.topAnchor.constraint(equalTo: klaimManageSegmentControl.bottomAnchor, constant: 12),
            klaimSearchBar.heightAnchor.constraint(equalToConstant: 35)
        ])
        klaimSearchBar.searchBarStyle = .default
        klaimSearchBar.layer.borderWidth = 1
        klaimSearchBar.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        klaimSearchBar.barTintColor = .white
        klaimSearchBar.backgroundColor = .white
        UIHelper.setTextField(textField: klaimSearchBar.searchTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "Tulis nama atau nomor polis", kerning: 0.5)
        
        view.addSubview(klaimfilterView)
        UIHelper.makeView(view: klaimfilterView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: klaimSearchBar.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 10, corner: 0, heightAnchor: 40, widthAnchor: 0)
        klaimfilterView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.1)
        
        klaimfilterView.addSubview(klaimfilterButton)
        UIHelper.makeSmallButton(smallButton: klaimfilterButton, leadingAnchor: klaimfilterView.leadingAnchor, topAnchor: klaimfilterView.topAnchor, leadingConstant: width-80, topConstant: 15, corner: 0, heightAnchor: 16, widthtAnchor: 51, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        klaimfilterButton.setImage(UIImage(named: "Filter Button"), for: .normal)
        
        view.addSubview(klaimEmptyImage)
        klaimEmptyImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimEmptyImage.topAnchor.constraint(equalTo: klaimfilterView.bottomAnchor, constant: 15),
            klaimEmptyImage.widthAnchor.constraint(equalToConstant: 204),
            klaimEmptyImage.heightAnchor.constraint(equalToConstant: 194),
            klaimEmptyImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        klaimEmptyImage.image = UIImage(named: "emptyImage")
        klaimEmptyImage.contentMode = .center
        
        view.addSubview(klaimEmptyLabel)
        UIHelper.makeLabel(label: klaimEmptyLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: klaimEmptyImage.bottomAnchor, leadingConstant: 50, trailingConstant: -50, topConstant: 0, heightAnchor: 40, widthAnchor: 0)
        klaimEmptyLabel.numberOfLines = 2
        klaimEmptyLabel.text = "TIDAK DITEMUKAN DATA KLAIM YANG DITOLAK"
        klaimEmptyLabel.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        view.addSubview(klaimPendingTableView)
        klaimPendingTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimPendingTableView.topAnchor.constraint(equalTo: klaimfilterView.bottomAnchor, constant: 10),
            klaimPendingTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            klaimPendingTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            klaimPendingTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        klaimPendingTableView.separatorStyle = .none
        klaimPendingTableView.showsVerticalScrollIndicator = false
        klaimPendingTableView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        klaimPendingTableView.register(PolisdanKlaimTableViewCell.self, forCellReuseIdentifier: "klaimCell")
        klaimManageSegmentControl.selectedSegmentIndex = 0
    }
    func setupNavBarKlaim(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "MONITORING KLAIM", style: .plain, target: nil, action: nil)
        
    }
    @objc func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

