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
    let promo = ["promo1","promo2","promo2","promo1"]
    let fetchindListProduct = FetchingListProduct()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchindListProduct.getDataFromApi()
        fetchindListProduct.getDataPacketDetailFromApi()
        if UIDevice.current.userInterfaceIdiom == .pad {
            print("iPad")
        }else{
            print("not iPad")
        }
        collectionViewPromo.delegate = self
        collectionViewPromo.dataSource = self
        collectionViewProduct.delegate = self
        collectionViewProduct.dataSource = self
        collectionViewInfo.delegate = self
        collectionViewInfo.dataSource = self
        collectionViewGalery.delegate = self
        collectionViewGalery.dataSource = self
        
        UiSetup()
        cvSetup()
        collectionViewProduct.reloadData()
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
        cartButton.addTarget(self, action: #selector(cartAction(sender:)), for: .touchUpInside)
        simulasiButton.addTarget(self, action: #selector(simulasiAction(sender:)), for: .touchUpInside)
        
        imageViewMap.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.mapAction(sender:)))
        self.imageViewMap.addGestureRecognizer(gesture)
        autoSwipeBanner()
        
//        for family: String in UIFont.familyNames
//        {
//            print(family)
//            for names: String in UIFont.fontNames(forFamilyName: family)
//            {
//                //                       print("== \(names)")
//            }
//        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        cvSetup()
        collectionViewProduct.reloadData()
        collectionViewInfo.reloadData()
        collectionViewPromo.reloadData()
        collectBannerPromo.reloadData()
        print("Login Status :", loginStatus)
    }
    
    
    
    
    
    @objc func tabBarProfileAction (sender : UIButton){
                if (loginStatus == 0) {
                let loginVC = storyboard?.instantiateViewController(identifier: "LoginViewController")  as! LoginViewController
                self.navigationController?.pushViewController(loginVC, animated: true)
                print("pressss")
                }else if(loginStatus == 1){
        let profileVC = storyboard?.instantiateViewController(identifier: "ProfileViewController") as!ProfileViewController
        self.navigationController?.pushViewController(profileVC, animated: true)
                }else{
                    print("Login failed")
                }
        
        
    }
    
    @objc func tabBarBeliAction(sender : UIButton){
        
        let daftarProdukVC = storyboard?.instantiateViewController(identifier : "ProdukViewController" ) as! ProdukViewController
        self.navigationController?.pushViewController(daftarProdukVC, animated: true)

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
    
    @objc func cartAction(sender : UIButton){
        let checkOutVC = storyboard?.instantiateViewController(identifier: "CheckOutCartViewController") as! CheckOutCartViewController
        self.navigationController?.pushViewController(checkOutVC, animated: true)
    }
    
    @objc func mapAction(sender: Any){
        let mapVc = storyboard?.instantiateViewController(identifier: "MapViewController") as! MapViewController
        self.navigationController?.pushViewController(mapVc, animated: true)
    }
    
    @objc func simulasiAction(sender: UIButton){
        
    }
    
    
    func autoSwipeBanner(){
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(automaticallyScroll), userInfo: nil, repeats: true)
    }
    
    @objc func automaticallyScroll(){
         let cv  = collectionViewPromo
            for cell in cv.visibleCells{
                let indexpath : IndexPath? = cv.indexPath(for: cell)
                if ((indexpath?.row)! < promo.count-1){
                    let indexPath1: IndexPath?
                    indexPath1 = IndexPath.init(row: (indexpath?.row)!+1, section: (indexpath?.section)!)
                    cv.scrollToItem(at: indexPath1!, at: .right, animated: true)
                }else{
                    let indexPath1 : IndexPath?
                    indexPath1 = IndexPath.init(row: 0, section: (indexpath?.section)!)
                    cv.scrollToItem(at: indexPath1!, at: .left, animated: true)
                }
        }
    }
    
}

