//
//  JenisProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukViewController: UIViewController {
    let produkBaseView = UIView()
    let prosesStackView : UIStackView = {
        let stackViewCV = UIStackView()
        stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
        stackViewCV.distribution = UIStackView.Distribution.fillEqually
        stackViewCV.alignment = UIStackView.Alignment.center
        stackViewCV.backgroundColor = #colorLiteral(red: 0.2131774127, green: 0.6528760791, blue: 1, alpha: 1)
        stackViewCV.translatesAutoresizingMaskIntoConstraints = false
        stackViewCV.spacing = 30
        return stackViewCV
    }()
    let lineView = UIView()
    let viewContainerTableProduk = UIView()
    let produkTable = UITableView()
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
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
        jenisProdukTable.delegate = self
        jenisProdukTable.dataSource = self
        setupUI()
        setupNavBarJenisProdukDetail()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
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
