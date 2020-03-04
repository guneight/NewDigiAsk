//
//  DetailBayarViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailBayarViewController: UIViewController {
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
        view.layoutIfNeeded()
        setupUI()// Do any additional setup after loading the view.
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
