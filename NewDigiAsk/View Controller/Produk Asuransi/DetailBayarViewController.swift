//
//  DetailBayarViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailBayarViewController: UIViewController {
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
        view.layoutIfNeeded()
        setupUI()
        setupNavBarDetailBayar()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        lihatTransaksiButton.addTarget(self, action: #selector(lihatTransaksion(sender:)), for: .touchUpInside)
        salinNomorRekeningLink()
        let tapGestur = UITapGestureRecognizer(target: self, action: #selector(salinNomorRekening(sender:)))
        salinNomorRekening.addGestureRecognizer(tapGestur)
    }
    


    // MARK: - Lihat Transaksi
    
    @objc func lihatTransaksion (sender : Any){
        let polisVC = self.storyboard?.instantiateViewController(identifier: "PolisViewController")  as! PolisViewController
        let profileVC = self.storyboard?.instantiateViewController(identifier: "ProfileViewController")  as! ProfileViewController
        let nav = UINavigationController(rootViewController: profileVC)
        
        UIApplication.shared.keyWindow?.rootViewController = nav
            nav.pushViewController(polisVC, animated: true)
    }

    func salinNomorRekeningLink(){
        let text = (salinNomorRekening.text)!
        let underliningString = NSMutableAttributedString(string: text)
        let salin = (text as NSString).range(of: "Salin nomor rekening")
        underliningString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: salin)
        salinNomorRekening.attributedText = underliningString
    }
    
    @objc func salinNomorRekening(sender : UITapGestureRecognizer){
        let text = (salinNomorRekening.text)!
        let daftarDisini = (text as NSString).range(of: "Salin nomor rekening")
        if sender.didTapAttributedTextInLabel(label: salinNomorRekening, inRange: daftarDisini){
            print("Salin nomor rekening")
        }
        
    }
}
