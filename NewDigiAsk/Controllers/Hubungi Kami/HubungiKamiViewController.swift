//
//  HubungiKamiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import MessageUI
class HubungiKamiViewController: UIViewController,MFMailComposeViewControllerDelegate  {
    let hubungiKamiLabel = UILabel()
    let hubungiKami7hariLabel = UILabel()
    let teleponBaseView = UIView()
    let teleponIconImage = UIImageView()
    let nomorTeleponLabel = UILabel()
    let chatBaseView = UIView()
    let chatIconImage = UIImageView()
    let chatLabel = UILabel()
    let emailBaseView = UIView()
    let emailIconImage = UIImageView()
    let emailLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarHubungiKami()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        let tapGesture  = UITapGestureRecognizer.init(target: self, action: #selector(callNumber))
        teleponBaseView.addGestureRecognizer(tapGesture)
        
        let emailTapGesture  = UITapGestureRecognizer.init(target: self, action: #selector(emailAction(sender:)))
        emailBaseView.addGestureRecognizer(emailTapGesture)
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Action
    @objc func teleponAction(sender: Any){
        //        callNumber(phoneNumber: nomorTeleponLabel.text!)
        //        let detailHubungiKamiVC = storyboard?.instantiateViewController(identifier: "DetailHubungiKamiViewController") as! DetailHubungiKamiViewController
        //        navigationController?.pushViewController(detailHubungiKamiVC, animated: true)
    }
    
    @objc func emailAction(sender : Any){
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["digital@askrindo.co.id"])
            mail.setSubject("DigiAsk help-")
            
            present(mail, animated: true)
        } else {
            print("send mail was failed")
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @objc func callNumber() {
        guard let url = URL(string: "tel://1500-045"),
            UIApplication.shared.canOpenURL(url) else { return }
        if #available(iOS 10, *) {
            UIApplication.shared.open(url)
        } else {
            UIApplication.shared.openURL(url)
        }
        
    }
}
