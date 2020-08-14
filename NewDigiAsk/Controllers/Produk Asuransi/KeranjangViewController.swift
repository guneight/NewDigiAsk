//
//  KerangkangViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import SkeletonView
class KeranjangViewController: UIViewController {
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
    let keranjangBaseView = UIView()
    let pilihSemuaProduk = UILabel()
    let pilihSemuaProdukButton = UIButton()
    let daftarProdukKeranjangTable = UITableView()
    let checkOutButton = UIButton()
    let trushButton = UIButton()
    let tableIndicator = UIActivityIndicatorView()
    
    var selectRows : [IndexPath] = []
    var productInCart = [CartModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daftarProdukKeranjangTable.delegate = self
        daftarProdukKeranjangTable.dataSource = self
        daftarProdukKeranjangTable.reloadData()
    
        view.layoutIfNeeded()
        setupUI()
        setupNavBarKeranjang()
        setupAction()
//        fecthData()
        statusCheckOutButton()
    }
    
    func setupAction(){
        pilihSemuaProdukButton.tag = 0
        pilihSemuaProdukButton.addTarget(self, action: #selector(pilihSemuaProduk(sender:)), for: .touchUpInside)
        trushButton.addTarget(self, action: #selector(deleteAllProduk), for: .touchUpInside)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        checkOutButton.addTarget(self, action: #selector(checkOutAction), for: .touchUpInside)
    }
 
    
    func fecthData(){
        let cart = Cart.shared.fetchDataCart()
//        productInCart.append(contentsOf: cart)
//        print("productInCart", productInCart)
    }
    
    func statusCheckOutButton(){
        if productInCart.count == 0{
            checkOutButton.isEnabled = false
            checkOutButton.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }else{
            checkOutButton.isEnabled = true
             checkOutButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        }
    }
    
    @objc func checkOutAction(sender: Any){
        if productInCart.count == 0{
            let homeVC = storyboard?.instantiateViewController(identifier: "HomeMenuViewController")  as! HomeMenuViewController
            self.navigationController?.pushViewController(homeVC, animated: true)
        }else{
            let checkOutVC = storyboard?.instantiateViewController(identifier: "CheckOutKeranjangViewController")  as! CheckOutKeranjangViewController
            self.navigationController?.pushViewController(checkOutVC, animated: true)
        }
    }
    
    @objc func namaProdukAction(sender: Any){
        let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
        self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
    }
    
    @objc func rightButtonAction(sender: Any){
        let detailPolisBeliVC = storyboard?.instantiateViewController(identifier: "DetailPolisBeliViewController") as! DetailPolisBeliViewController
        self.navigationController?.pushViewController(detailPolisBeliVC, animated: true)
        
    }
    
    
    
}
