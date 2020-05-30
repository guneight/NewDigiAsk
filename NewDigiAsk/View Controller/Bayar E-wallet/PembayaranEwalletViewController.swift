//
//  PemabayaranLinkAjaViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PembayaranEwalletViewController: UIViewController {
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
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
    
    let pembayaranEwalletBaseView = UIView()
    let totalPembayaranView = UIView()
    let totalPembayaranHeaderLabel = UILabel()
    let totalPembayaranLabel = UILabel()
    
    let ewalletView = UIView()
    let ewalletIcon = UIImageView()
    let namaEwallet = UILabel()
    let underlineEwallet = UIView()
    let keteranganLabel = UILabel()
    
    let lanjutButton = UIButton()
    var ewalletSelected : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarBayarEwallet()
        lanjutButton.addTarget(self, action: #selector(lanjutAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    

    
    // MARK: - Lanjut
    
    @objc func lanjutAction(){
        if ewalletSelected == 0{
            let detailBayarOvo = storyboard?.instantiateViewController(identifier: "DetailBayarOvoViewController") as! DetailBayarOvoViewController
            self.navigationController?.pushViewController(detailBayarOvo, animated: true)
        }else if ewalletSelected == 1{
            let detailBayarGopay = storyboard?.instantiateViewController(identifier: "DetailBayarGopayViewController") as! DetailBayarGopayViewController
            self.navigationController?.pushViewController(detailBayarGopay, animated: true)
        }else if ewalletSelected == 2{
            let detailBayarLinkAja = storyboard?.instantiateViewController(identifier: "DetailBayarLinkAjaViewController") as! DetailBayarLinkAjaViewController
            self.navigationController?.pushViewController(detailBayarLinkAja, animated: true)
        }
    }

   

}
