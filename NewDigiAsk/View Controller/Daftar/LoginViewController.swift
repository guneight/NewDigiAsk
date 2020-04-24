//
//  LoginViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let loginsScrollView = UIScrollView()
    let backgroundImage = UIImageView()
    let logoImage = UIImageView()
    let silahkanMasukLabel = UILabel()
    let loginBaseView = UIView()
    let nomorPonselEmailLabel = UILabel()
    let nomorPonseLEmailTextField = UITextField()
    let underlineNomorPonselEmail = UIView()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let underlinePassword = UIView()
    let continueButton = UIButton()
    let atauMasukDenganLabel = UILabel()
    let signInWithGoogleButton = UIButton()
    let googleIconImage = UIImageView()
    let belumPunyaAkunLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarLogin()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        nomorPonseLEmailTextField.addTarget(self, action:#selector(checkEmail) , for: .editingChanged)
        continueButton.addTarget(self, action: #selector(continueAction), for: .touchUpInside)
        daftarDisiniLink()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(daftarAkun(sender:)))
        belumPunyaAkunLabel.addGestureRecognizer(gesture)
        // Do any additional setup after loading the view.
        
    }
    

    @objc func checkEmail() {
        if nomorPonseLEmailTextField.text?.isValidEmail == true{
            passwordLabel.isHidden = false
            passwordTextField.isHidden = false
            underlinePassword.isHidden = false
        }else{
            passwordLabel.isHidden = true
            passwordTextField.isHidden = true
            underlinePassword.isHidden = true
        }
    }
    
    @objc func continueAction(){
        print("continueAction")
        let verifikasiEmailVC = storyboard?.instantiateViewController(identifier: "VerifkasiEmailViewController") as! VerifkasiEmailViewController
        self.navigationController?.pushViewController(verifikasiEmailVC, animated: true)
    }

    
    func daftarDisiniLink(){
        let text = (belumPunyaAkunLabel.text)!
        let underliningString = NSMutableAttributedString(string: text)
        let daftarDisini = (text as NSString).range(of: "Daftar disini")
        underliningString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: daftarDisini)
        belumPunyaAkunLabel.attributedText = underliningString
    }
    
    @objc func daftarAkun(sender : UITapGestureRecognizer){
        let text = (belumPunyaAkunLabel.text)!
        let daftarDisini = (text as NSString).range(of: "Daftar disini")
        if sender.didTapAttributedTextInLabel(label: belumPunyaAkunLabel, inRange: daftarDisini){
            let daftarVC = storyboard?.instantiateViewController(identifier: "DaftarViewController") as! DaftarViewController
            self.navigationController?.pushViewController(daftarVC, animated: true)
        }
        
    }
              
}


