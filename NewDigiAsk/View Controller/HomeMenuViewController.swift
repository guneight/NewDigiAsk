//
//  ViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class HomeMenuViewController: UIViewController {

   let scrollView : UIScrollView = UIScrollView()
      let containerViewNav : UIView = UIView()
      let cartButton : UIButton = UIButton()
      let chatButton : UIButton = UIButton()
      let notifButton : UIButton = UIButton()
      let containerView : UIView = UIView()
      let backcontainerView : UIView = UIView()
      let baseView : UIView = UIView()
      let tabBarView : UIView = UIView()
      let stackView : UIStackView = UIStackView()
      let homeButton : UIButton = UIButton()
      let klaimButton : UIButton = UIButton()
      let beliButton : UIButton = UIButton()
      let simulasiButton : UIButton = UIButton()
      let profileButton : UIButton = UIButton()
      let imageBarView : UIImageView = UIImageView()
      let logoImageView : UIImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UiSetup()
        cvSetup()
        collectBannerPromo.reloadData()
        collectionViewPromo.reloadData()
        collectionViewInfo.reloadData()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        profileButton.addTarget(self, action: #selector(tabBarProfileAction(sender:)), for: .touchUpInside)
        beliButton.addTarget(self, action: #selector(tabBarBeliAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.setNavigationBarHidden(true, animated: false)
        collectionViewInfo.reloadData()
        collectionViewPromo.reloadData()
        collectBannerPromo.reloadData()
    }
    
    
    @objc func tabBarProfileAction (sender : Any){
//        let profileVC = storyboard?.instantiateViewController(identifier: "DaftarViewController")  as! DaftarViewController
//        self.navigationController?.pushViewController(profileVC, animated: true)
//        print("pressss")

         let profileVC = storyboard?.instantiateViewController(identifier: "ProfileViewController")  as! ProfileViewController
                self.navigationController?.pushViewController(profileVC, animated: true)
        //        print("pressss")
    }
        
    @objc func tabBarBeliAction(sender : Any){
        
        let daftarProdukVC = storyboard?.instantiateViewController(identifier : "ProdukViewController" ) as! ProdukViewController
        self.navigationController?.pushViewController(daftarProdukVC, animated: true)
        print("beli")
    }
    
    
    
    


}

