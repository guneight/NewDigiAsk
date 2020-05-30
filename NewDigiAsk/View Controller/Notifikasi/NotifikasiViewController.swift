//
//  NotifikasiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 31/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class NotifikasiViewController: UIViewController {
    let notifikasiBaseView = UIView()
    let notifikasiListTable = UITableView()
    
    let baseViewUndoDelete = UIView()
    let notifHaveDeleteLabel = UILabel()
    let undoLabel = UILabel()
    let closeButton = UIButton()
    var arrayTemp = [""]
    var indexDelete = 0
    var titleNotifArray = ["Asuransi Corona","Askrindo Promo Lebaran","Askrindo serahkan bantuan mobil pintar untuk Aceh","Askrindo serahkan bantuan mobil pintar untuk Aceh","Askrindo serahkan bantuan mobil pintar untuk Aceh","Askrindo serahkan bantuan mobil pintar untuk Aceh","Askrindo serahkan bantuan mobil pintar untuk Aceh"]
    var bodyNotifArry = ["Coronavirus Disease 2019 atau COVID-19 …Selengkapnya","Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat …Selengkapnya","Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat …Selengkapnya","Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat …Selengkapnya","Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat …Selengkapnya","Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat …Selengkapnya","Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam periode polis sebagai akibat …Selengkapnya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarNotifikasi()
        view.layoutIfNeeded()
        notifikasiListTable.delegate = self
        notifikasiListTable.dataSource  = self
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(undoAction))
        undoLabel.addGestureRecognizer(tapGesture)
        closeButton.addTarget(self, action: #selector(closeAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

 
    // MARK: - TRUSH ACTION


   

}
