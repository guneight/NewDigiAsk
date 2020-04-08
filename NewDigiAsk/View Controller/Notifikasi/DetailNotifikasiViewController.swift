//
//  DetailNotifikasiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailNotifikasiViewController: UIViewController {
    let detailNotifikasiScroolView = UIScrollView()
    let detailNotifikasiBaseView = UIView()
    let detailNotifikasiImageView = UIImageView()
    let detailNotifikasiLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBarDetailNotifikasi()
        setupUI()
        
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
