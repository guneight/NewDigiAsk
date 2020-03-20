//
//  DetailProdukPolisViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailProdukPolisViewController: UIViewController {
    let detailProdukPolisScrollView  = UIScrollView()
    let detailProdukPolisView = UIView()
    let backgroundNamaAsuransiView = UIView()
    let namaAsuransiLabel = UILabel()
    let iconProdukImage = UIImageView()
    let headerJenisLabel = UILabel()
    let jenisLabel = UILabel()
    let headerJangkaWaktuLabel = UILabel()
    let jangkaWaktuLabel = UILabel()
    let headerPremiLabel = UILabel()
    let premiLabel = UILabel()
    let headerNilaiPertanggunganLabel = UILabel()
    let nilaiPetanggunganLabel = UILabel()
    
    let backgroundIdentitasTertanggungView  = UIView()
    let identitasTertanggungLabel = UILabel()
    let namaLengkapLabel = UILabel()
    let namaLengkapTextField = UITextField()
    let underlineNamaLengkap = UIView()
    let nomorKTPLabel = UILabel()
    let nomorKTPTextField = UITextField()
    let underlineNomorKTP = UIView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let underlineEmail = UIView()
    let nomorTeleponLabel = UILabel()
    let nomorTeleponTextField = UITextField()
    let underlineNomorTelepon = UIView()
    
    let backgroundIdentitasAhliWaris = UIView()
    let identitasAhliWarisLabel = UILabel()
    let namaLengkapAhliWarisLabel = UILabel()
    let namaLengkapAhliWarisTextField = UITextField()
    let underlineNamaLengkapAhliWaris = UIView()
    let nomorKTPAhliWarisLabel = UILabel()
    let nomorKTPAhliWarisTextField = UITextField()
    let underlineNomorKtpAhliWaris = UIView()
    let emailAhliWarisLabel = UILabel()
    let emailAhliWarisTextField = UITextField()
    let underlineEmailAhliWaris = UIView()
    let nomorTeleponAhliWarisLabel = UILabel()
    let nomorTeleponAhliWarisTextField = UITextField()
    let underlineNomorTeleponAhliWaris = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.setNavigationBarHidden(false, animated: false)
        setupUIDetailProdukPolis()
        setupNavBarDetailProdukPolis()
        // Do any additional setup after loading the view.
    }
    
    

}
