//
//  CheckOutKeranjangViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class CheckOutKeranjangViewController: UIViewController {
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
        detailPolisBeliVC.modalPresentationStyle = .custom
        detailPolisBeliVC.transitioningDelegate = PresentationDelegate
        present(detailPolisBeliVC, animated: true, completion: nil)
    }
    
    @objc func rightButtonAction(sender:Any){
           let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
           detailPolisBeliVC.modalPresentationStyle = .custom
           detailPolisBeliVC.transitioningDelegate = PresentationDelegate
           present(detailPolisBeliVC, animated: true, completion: nil)
       }

}
