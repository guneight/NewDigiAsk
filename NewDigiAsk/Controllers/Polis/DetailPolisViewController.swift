//
//  DetailPolisViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 19/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailPolisViewController: UIViewController {
    let detailPolisScrolView = UIScrollView()
    let detailPolisView = UIView()
    
    let dataPolisView = UIView()
    let headerNomorPolisLabel = UILabel()
    let nomorPolisLabel = UILabel()
    let underlineNomorPolis = UIView()
    let headerStatusPolisLabel = UILabel()
    let statusPolisLabel = UILabel()
    let underlineStatusPolis = UIView()
    let headerMasaBerlakuLabel = UILabel()
    let masaBerlakuLabel = UILabel()
    
    let produkView = UIView()
    let namaProdukAsuransiLabel = UILabel()
    let underlineNamaProduk = UILabel()
    let iconProdukImage = UIImageView()
    let deskripsiProdukLabel = UILabel()
    let hargaProdukLabel = UILabel()
    let rightButton = UIButton()
    
    let statusPembayaranView = UIView()
    let statusPembayaranLabel = UILabel()
    let underlineStatusPembayaran = UIView()
    let headerNomortransaksiLabel = UILabel()
    let nomorTransaksiLabel = UILabel()
    let headerNomorPengajuan = UILabel()
    let nomorPengajuanLabel = UILabel()
    let headerTanggalPembayarLabel = UILabel()
    let tanggalPembayaranLabel = UILabel()
    let headerStatusPembayaran = UILabel()
    let statusbayarLabel = UILabel()
    let headerMetodelabel = UILabel()
    let metodeLabel  = UILabel()
    
    let beliLagiButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIDetailPolis()
        setupNavBarDeatailPolis()
        view.layoutIfNeeded()
         self.navigationController?.setNavigationBarHidden(false, animated: false)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(detailAsuransiAction(sender:)))
        namaProdukAsuransiLabel.addGestureRecognizer(tapGesture)
        rightButton.addTarget(self, action: #selector(righButtonAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - beli lagi
    
    @objc func beliLagiAction(sender : Any){
        
    }
    
    
    @objc func detailAsuransiAction(sender: Any){
        let detailProdukPolisVC = storyboard?.instantiateViewController(identifier: "DetailProdukPolisViewController") as! DetailProdukPolisViewController
        navigationController?.pushViewController(detailProdukPolisVC, animated: true)
        
    }
    
    @objc func righButtonAction(sender : Any){
        let detailProdukPolisVC = storyboard?.instantiateViewController(identifier: "DetailProdukPolisViewController") as! DetailProdukPolisViewController
        navigationController?.pushViewController(detailProdukPolisVC, animated: true)
    }

}
