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
    var productCart : ProductinCart?
    var productInCart = [ProductinCart]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daftarProdukKeranjangTable.delegate = self
        daftarProdukKeranjangTable.dataSource = self
        daftarProdukKeranjangTable.reloadData()
    
        view.layoutIfNeeded()
        setupUI()
        setupNavBarKeranjang()
        pilihSemuaProdukButton.tag = 0
        pilihSemuaProdukButton.addTarget(self, action: #selector(pilihSemuaProduk(sender:)), for: .touchUpInside)
        trushButton.addTarget(self, action: #selector(deleteAllProduk), for: .touchUpInside)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        checkOutButton.addTarget(self, action: #selector(checkOutAction), for: .touchUpInside)
        fecthData()
    }
    
 
    
    func fecthData(){
        FetchingListProduct.shared.getProductFromCart(idUser: "5"){(data) in
            self.productInCart = data
            self.daftarProdukKeranjangTable.reloadData()
            
        }
    }
    
    @objc func checkOutAction(sender: Any){
        if productInCart.count == 0{
            let produkVC = storyboard?.instantiateViewController(identifier: "ProdukViewController")  as! ProdukViewController
            self.navigationController?.pushViewController(produkVC, animated: true)
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
