//
//  ProdukDetailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 25/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProdukDetailViewController: UIViewController {
       let produkView = UIView()
       let produkDetailScrollView = UIScrollView()
       let produkBaseView = UIView()
       let produkDetailHeaderLabel = UILabel()
       let produkDetailImage = UIImageView()
       let attributView = UIView()
       let namaProdukLabel = UILabel()
       let deskripsiProdukLabel = UILabel()
       let penggunaLabel = UILabel()
       let deskripsiPenggunaLabel = UILabel()
       let gantiRugiContainerView = UIView()
       let iconGantiRugiImage = UIImageView()
       let gantiRugiLabel = UILabel()
       let lineGantiRugiLabel = UILabel()
       let deskripsiGantiRugi = UILabel()
       let penggantiBiayacontainerView = UIView()
       let iconPenggantiBiayaImage = UIImageView()
       let penggantiBiayaLabel = UILabel()
       let linePenggatianBiayaLabel = UIView()
       let deskripsiPenggantiBiayaLabel = UILabel()
       let pilihProdukButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.layoutIfNeeded()
        pilihProdukAction()
        
        // Do any additional setup after loading the view.
    }
    
    func pilihProdukAction(){
        pilihProdukButton.addTarget(self, action: #selector(pilihProduk(sender:)), for: .touchUpInside)
    }
    
    @objc func pilihProduk(sender: Any){
        let jenisProdukVC = self.storyboard?.instantiateViewController(identifier: "JenisProdukViewController") as! JenisProdukViewController
        jenisProdukVC.modalPresentationStyle = UIModalPresentationStyle.automatic
        jenisProdukVC.transitioningDelegate = PresentationDelegate
        jenisProdukVC.modalPresentationStyle = .custom
        present(jenisProdukVC, animated: true, completion: {})
        
    }
    
   

   

}
