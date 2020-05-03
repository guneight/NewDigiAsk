//
//  JenisProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukViewController: UIViewController {
    let jenisProdukView = UIView()
    let jenisProdukScrollView = UIScrollView()
    let namaProdukLabel = UILabel()
    let jenisProdukCOntainerView = UIView()
    let lineJenisProduk = UIView()
    let jenisProdukTable = UITableView()
    let jenisTableCell = jenisProdukTableViewCell()
    
    let jenisProdukLabel = UILabel()
    let startHargaProdukLabel = UILabel()
    let deskripsiJenisProdukLabel = UILabel()
    
    let jenisProduk = ["Silver","Gold","Platinum"]
    let startHarga = ["Start From Rp 20.000,-", "Start From Rp 50.000,-", "Start From Rp 100.000,-"]
    let deskripsijenisProduk = "Memberikan perlindungan atas risiko kematian, cacat tetap, biaya perawatan dan atau pengobatan yang secara langsung disebabkan suatu kecelakaan. Kecelakaan yaitu suatu kejadian atau peristiwa yang mengandung unsur kekerasan, baik bersifat fisik maupun kimia, yang datangnya secara tiba-tiba, termasuk juga kecelakaan yaitu yang disebabkan karena keracunan makanan, uap dan gas, jatuh ke dalam air atau tenggelam."
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        jenisProdukTable.delegate = self
        jenisProdukTable.dataSource = self
        setupUI()
        setupNavBarJenisProdukDetail()
        view.layoutIfNeeded()
        
        
        // Do any additional setup after loading the view.
    }

    @objc func jenisProdukDetail(sender: Any){
        let jenisProdukDetailVC = self.storyboard?.instantiateViewController(identifier: "JenisProdukDetailViewController") as! JenisProdukDetailViewController
        jenisProdukDetailVC.namajenisProdukDetailLabel.text = jenisProdukLabel.text
        jenisProdukDetailVC.startHargaProdukDetailLabel.text = startHargaProdukLabel.text
        jenisProdukDetailVC.deskripsiJenisProdukDetail.text = deskripsiJenisProdukLabel.text
        print( "deskripsi : \(  String(describing: jenisProdukDetailVC.deskripsiJenisProdukDetail.text))")
        self.navigationController?.pushViewController(jenisProdukDetailVC, animated: true)
        
    }

  
   

}
