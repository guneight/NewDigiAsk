//
//  DetailBayarCartViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailBayarCartViewController: UIViewController {
    let detailBayarView = UIView()
    let transaksiView = UIView()
    let headerNomorTransaksiLabel = UILabel()
    let nomorTransaksiLabel = UILabel()
    let headerNomorPengajuanLabel = UILabel()
    let nomorPengajuanLabel = UILabel()
    
    let segeraLakukanPembayaranLabel = UILabel()
    let tanggalWaktuPembayarannLabel = UILabel()
    
    let virtualAccountView = UIView()
    let tranferkeNomorLabel = UILabel()
    let iconMetodeBayarImage = UIImageView()
    let nomorVirtualAccountLabel = UILabel()
    let salinNomorRekening = UILabel()
    
    let panduanPembayranLabel = UILabel()
    let internetBankingView = UIView()
    let internetBankingLabel = UILabel()
    let rightButtonInternet = UIButton()
    let mobileBankingView = UIView()
    let mobileBankingLabel = UILabel()
    let rightButtonMobile = UIButton()
    let lihatTransaksiButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarDetailBayarCart()
        lihatTransaksiButton.addTarget(self, action: #selector(lihatTransaksiAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
        setupNavBarDetailBayarCart()
        view.layoutIfNeeded()
    }
    
    @objc func lihatTransaksiAction (){
        let polisVC = storyboard?.instantiateViewController(identifier: "PolisViewController") as! PolisViewController
        self.navigationController?.pushViewController(polisVC, animated: true)
    }
    
}
