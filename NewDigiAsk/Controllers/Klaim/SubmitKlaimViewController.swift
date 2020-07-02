//
//  SubmitKlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class SubmitKlaimViewController: UIViewController {
    let submitKlaimView = UIView()
    let dataPolisView  = UIView()
    let headerNomorPolisLabel = UILabel()
    let nomorPolisLabel = UILabel()
    let lineNomorPolis = UILabel()
    let headerStatusPolisLabel = UILabel()
    let statusPolisLabel = UILabel()
    let laniStatusPolis = UILabel()
    let headerMasaBerlakuLabel = UILabel()
    let masaBerlakuLabel = UILabel()
    
    let manfaatView = UIView()
    let pilihManfaatLabel = UILabel()
    let linepilihManfaat = UIView()
    let manfaatlabel = UILabel()
    let namaManfaatLabel = UILabel()
    
    let dokumentKlaimView = UIView()
    let dokumenKlaimLabel = UILabel()
    let lineDokumenKlaim = UILabel()
    let ktpImage  = UIImageView()
    let suratBuktiImage = UIImageView()
    let kartuKeluargaImage = UIImageView()
    
    let klaimButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUISubmitKlaim()
        view.layoutIfNeeded()
        klaimButton.addTarget(self, action: #selector(klaimAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    


    // MARK: klaimButton Action
    @objc func klaimAction(sender : Any){
        let monitoringKlaimVC = storyboard?.instantiateViewController(identifier: "MonitoringKlaimViewController") as! MonitoringKlaimViewController
        navigationController?.pushViewController(monitoringKlaimVC, animated: true)
    }

   

}
