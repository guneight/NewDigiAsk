//
//  DetailHubungiKamiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 08/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import Contacts
import ContactsUI

class DetailHubungiKamiViewController: UIViewController,CNContactViewControllerDelegate {
    let detailHubungiKamiBaseView = UIView() 
    let iconCreateNewContactImage = UIImageView()
    let createNewContactLabel = UILabel()
    let underlineCreateNewContact = UIView()
    
    let iconSMSImage = UIImageView()
    let smsLabel = UILabel()
    let underlineSMS = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
//        setupNavBarDetailHubungiKami()
        view.layoutIfNeeded()
         self.navigationController?.setNavigationBarHidden(false, animated: true)
        let newContactgesture = UITapGestureRecognizer(target: self, action: #selector(createNewContactAction(sender:)))
        createNewContactLabel.addGestureRecognizer(newContactgesture)
        let smsGesture = UITapGestureRecognizer(target: self, action: #selector(smsAction(sender:)))
        smsLabel.addGestureRecognizer(smsGesture)
        // Do any additional setup after loading the view.
    }
    

     @objc func createNewContactAction(sender :Any){
        let contact = CNMutableContact()
        contact.contactType = CNContactType.person
        let phoneNumber = CNLabeledValue(label: CNLabelHome, value: CNPhoneNumber(stringValue: "12345678"))
        contact.givenName = "DigiAsk Contact"
        contact.familyName = "Askrindo"
        contact.phoneNumbers = [phoneNumber]
//        contact.ima = UIImage(named: "")
        let image:UIImage = UIImage(named: "iconDigiAsk")!
        if let imageData:Data = image.pngData() {
            contact.imageData = imageData
        }
        let vc = CNContactViewController(forNewContact: contact)
        vc.delegate = self
        let nav = UINavigationController(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
        
    }
    
    @objc func smsAction(sender : Any){
        
        let sms: String = "sms:+12345678&body=Hello DigiAsk...."
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
    }
}
