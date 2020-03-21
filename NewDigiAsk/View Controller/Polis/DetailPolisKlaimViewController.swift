//
//  DetailPolisKlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailPolisKlaimViewController: UIViewController {
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIDetailPolisKlaim()
        setupNavBarDetailPolisKlaim()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let tapGestur = UITapGestureRecognizer(target: self, action: #selector(rightButtonAction(sender:)))
        namaProdukAsuransiLabel.addGestureRecognizer(tapGestur)
        rightButton.addTarget(self, action: #selector(rightButtonAction(sender:)), for: .touchUpInside)
    }
    

    @objc func namaProdukAsuransiAction(sender : Any){
        let detailProdukPolisVC = storyboard?.instantiateViewController(identifier: "DetailProdukPolisViewController") as! DetailProdukPolisViewController
        navigationController?.pushViewController(detailProdukPolisVC, animated: true)
    }
    
    @objc func rightButtonAction(sender: Any){
         let detailProdukPolisVC = storyboard?.instantiateViewController(identifier: "DetailProdukPolisViewController") as! DetailProdukPolisViewController
        navigationController?.pushViewController(detailProdukPolisVC, animated: true)
    }

}
