//
//  ViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class HomeMenuViewController: UIViewController {
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UiSetup()
        cvSetup()
        view.layoutIfNeeded()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        profileButton.addTarget(self, action: #selector(tabBarProfileAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    @objc func tabBarProfileAction (sender : Any){
        let profileVC = storyboard?.instantiateViewController(identifier: "DaftarViewController")  as! DaftarViewController
        self.navigationController?.pushViewController(profileVC, animated: true)
        print("pressss")
    }
    
    
    
    
    


}

