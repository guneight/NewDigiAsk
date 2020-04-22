//
//  ViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class HomeMenuViewController: UIViewController,UIGestureRecognizerDelegate {

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
    
      let viewMap = UIView()
      let labelMap = UILabel()
      let imageViewMap = UIImageView()
      
    var indexProduk : Int = 0
    var loginStatus : Int = 0
    
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
        klaimButton.addTarget(self, action: #selector(tabBarKlaim(sender:)), for: .touchUpInside)
        notifButton.addTarget(self, action: #selector(notificationAction(sender:)), for: .touchUpInside)
        chatButton.addTarget(self, action: #selector(hubungiKamiAction(sender:)), for: .touchUpInside)
        simulasiButton.addTarget(self, action: #selector(simulasiAction(sender:)), for: .touchUpInside)
        imageViewMap.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.mapAction(sender:)))
        self.imageViewMap.addGestureRecognizer(gesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.setNavigationBarHidden(true, animated: false)
        cvSetup()
        collectionViewInfo.reloadData()
        collectionViewPromo.reloadData()
        collectBannerPromo.reloadData()
    }
    
    
    
    @objc func tabBarProfileAction (sender : UIButton){
        let DaftarVC = storyboard?.instantiateViewController(identifier: "DAsViewController")  as! DAsViewController
        self.navigationController?.pushViewController(DaftarVC, animated: true)
        print("pressss")
        
//        let daftarAccountVC = storyboard?.instantiateViewController(identifier: "DaftarAccountViewController") as! DaftarAccountViewController
//        navigationController?.pushViewController(daftarAccountVC, animated: true)
//        let profileVC = storyboard?.instantiateViewController(identifier: "ProfileViewController")  as! ProfileViewController
//                self.navigationController?.pushViewController(profileVC, animated: true)
//        print("pressss")
    }
        
    @objc func tabBarBeliAction(sender : UIButton){
        
        let daftarProdukVC = storyboard?.instantiateViewController(identifier : "ProdukViewController" ) as! ProdukViewController
        self.navigationController?.pushViewController(daftarProdukVC, animated: true)
        print("beli")
    }
    
    @objc func tabBarKlaim(sender : UIButton){
        
        let polisVC = storyboard?.instantiateViewController(identifier: "KlaimViewController") as! KlaimViewController
        self.navigationController?.pushViewController(polisVC, animated: true)
    }
    
    @objc func notificationAction(sender: UIButton){
        let notifikasiVC = storyboard?.instantiateViewController(identifier: "NotifikasiViewController") as! NotifikasiViewController
        self.navigationController?.pushViewController(notifikasiVC, animated: true)
    }
    
    @objc func hubungiKamiAction(sender: UIButton){
        let hubungiKamiVC = storyboard?.instantiateViewController(identifier: "HubungiKamiViewController") as! HubungiKamiViewController
        self.navigationController?.pushViewController(hubungiKamiVC, animated: true)
    }
    
    @objc func mapAction(sender: Any){
        let mapVc = storyboard?.instantiateViewController(identifier: "MapViewController") as! MapViewController
        self.navigationController?.pushViewController(mapVc, animated: true)
        print("lewat")
    }
    
    @objc func simulasiAction(sender: UIButton){
        let DaftarVC = storyboard?.instantiateViewController(identifier: "DaftarAccountViewController")  as! DaftarAccountViewController
        self.navigationController?.pushViewController(DaftarVC, animated: true)
        print("pressss")
    }
    
    


}

