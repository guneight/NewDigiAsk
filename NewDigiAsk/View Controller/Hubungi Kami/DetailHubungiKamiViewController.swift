//
//  DetailHubungiKamiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class DetailHubungiKamiViewController: UIViewController {
    let detailHubungiKamiBaseView = UIView() 
    let iconCreateNewContactImage = UIImageView()
    let createNewContactLabel = UILabel()
    let underlineCreateNewContact = UIView()
    
    let iconAddContactImage = UIImageView()
    let addContactLabel = UILabel()
    let underlineAddCOntact = UIView()
    
    let iconSMSImage = UIImageView()
    let smsLabel = UILabel()
    let underlineSMS = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
//        setupNavBarDetailHubungiKami()
        view.layoutIfNeeded()
         self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
