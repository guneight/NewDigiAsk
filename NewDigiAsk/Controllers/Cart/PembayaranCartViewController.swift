//
//  PembayaranCartViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PembayaranCartViewController: UIViewController {
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
        let checkOutView = UIView()
        let pembelianBerupa =  UILabel()
        let daftarPembelianTable = UITableView()
        let jumlahPembelianProduk : Int = 10
        let totalHargaLabel = UILabel()
        let bayarButton = UIButton()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.layoutIfNeeded()
            setupUI()
            daftarPembelianTable.delegate = self
            daftarPembelianTable.dataSource = self
            setupNavBarCheckOut()
            self.navigationController?.setNavigationBarHidden(false, animated: false)
            bayarButton.addTarget(self, action: #selector(bayarAction(sender:)), for: .touchUpInside)
            // Do any additional setup after loading the view.
        }
        
        
        @objc func bayarAction (sender : Any){
            let pembayaranVC = storyboard?.instantiateViewController(identifier: "PembayaranViewController")  as! PembayaranViewController
            self.navigationController?.pushViewController(pembayaranVC, animated: true)
        }
        
        @objc func namaProdukAction(sender:Any){
            let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
           self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
        }
        
        @objc func rightButtonAction(sender:Any){
            let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
            self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
        }
        
    }

