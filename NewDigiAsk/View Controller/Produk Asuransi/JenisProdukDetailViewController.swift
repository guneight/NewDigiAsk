//
//  JenisProdukDetailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukDetailViewController: UIViewController {
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
    let jenisProdukDetailView = UIView()
    let JenisProdukContainerView = UIView()
    let iconJenisProdukDetailImage = UIImageView()
    let namajenisProdukDetailLabel = UILabel()
    let startHargaProdukDetailLabel = UILabel()
    let lineHargaProdukDetail = UIView()
    let deskripsiJenisProdukDetail = UILabel()
    let daftarPremiTable = UITableView()
    
    let hargaDetail = ["Rp 20.000,-", "Rp 20.000,-","Rp 40.000,-","Rp 60.000,-","Rp 80.000,-"]
    let jumlahHari = ["7 hari", "14 hari", "30 hari", "3 bulan", "6 bulan"]
    let jenisProduk = ["Silver","Gold","Platinum"]
    let startHarga = ["Start From Rp 20.000,-", "Start From Rp 50.000,-", "Start From Rp 100.000,-"]
    let deskripsijenisProduk = "Memberikan perlindungan atas risiko kematian, cacat tetap, biaya perawatan dan atau pengobatan yang secara langsung disebabkan suatu kecelakaan. Kecelakaan yaitu suatu kejadian atau peristiwa yang mengandung unsur kekerasan, baik bersifat fisik maupun kimia, yang datangnya secara tiba-tiba, termasuk juga kecelakaan yaitu yang disebabkan karena keracunan makanan, uap dan gas, jatuh ke dalam air atau tenggelam."
    
    

    override func viewDidLoad() {
        view.backgroundColor = .gray
        daftarPremiTable.delegate = self
        daftarPremiTable.dataSource = self
        setupUI()
        super.viewDidLoad()
        daftarPremiTable.reloadData()
        setupNavBarJenisProdukDetail()
         self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        print("namajenisProdukDetailLabel : \(String(describing: namajenisProdukDetailLabel.text))")
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
