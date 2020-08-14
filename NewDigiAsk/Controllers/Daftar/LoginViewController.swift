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
    let showPasswordButton = UIButton()
    let lupaPasswordLabel = UILabel()
    let underlinePassword = UIView()
    let continueButton = UIButton()
    let atauMasukDenganLabel = UILabel()
    let signInWithGoogleButton = UIButton()
    let googleIconImage = UIImageView()
    let belumPunyaAkunLabel = UILabel()
    let emailAlert = UILabel()
    var iconClick = true
    var loginStatus : Int = 0
    
    var loginResponse : User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarLogin()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        nomorPonseLEmailTextField.addTarget(self, action:#selector(checkEmail) , for: .editingChanged)
        showPasswordButton.addTarget(self, action: #selector(showOrHidePassword), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lupaPasswordAction))
        lupaPasswordLabel.addGestureRecognizer(tapGesture)
        continueButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        daftarDisiniLink()
        let gesture = UITapGestureRecognizer(target: self, action: #selector(daftarAkun(sender:)))
        belumPunyaAkunLabel.addGestureRecognizer(gesture)
        let tapDismissKeyBoard = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapDismissKeyBoard)
        print("LoginViewController")
        
        
    }
    
    @objc func loginAction(){
        if (self.nomorPonseLEmailTextField.text?.isValidEmail == true && self.passwordTextField.text?.isEmpty == true) || self.nomorPonseLEmailTextField.text?.isNumber == true{
            print("nomorPonseLEmailTextField.text= \(nomorPonseLEmailTextField.text)" ,passwordTextField.text)
            LoginRegister.shared.loginRequest(nomorOrEmail: nomorPonseLEmailTextField.text ?? "", password: passwordTextField.text ?? ""){(data) in
                
                if data != nil {
                    self.loginResponse = data
                    print(self.loginResponse!)
                    DispatchQueue.main.async {
                        let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeMenuViewController") as! HomeMenuViewController
                        self.navigationController?.pushViewController(homeVC, animated: true)
                    }
                    
                }else{
                    print("Login Failed")
                    let alertNoHp = UIAlertController(title: "Login Failed", message: "Email tidak ditemukan", preferredStyle: .alert)
                    alertNoHp.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alertNoHp, animated: true)
                }
            }
        }else {
            print("continueAction")
            let alertNoHp = UIAlertController(title: "Nomor HP atau Email tidak valid", message: "Mohon periksa kembali nomor hp atau email Anda", preferredStyle: .alert)
            alertNoHp.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alertNoHp, animated: true)
        }
    }
    
    
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @objc func checkEmail() {
        if nomorPonseLEmailTextField.text?.isValidEmail == true{
            emailAlert.isHidden = true
            passwordLabel.isHidden = false
            passwordTextField.isHidden = false
            showPasswordButton.isHidden = false
            lupaPasswordLabel.isHidden = false
            underlinePassword.isHidden = false
            
        }else{
            emailAlert.isHidden = false
            passwordLabel.isHidden = true
            passwordTextField.isHidden = true
            showPasswordButton.isHidden = true
            lupaPasswordLabel.isHidden = true
            underlinePassword.isHidden = true
        }
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
    
    @objc func showOrHidePassword(){
        if iconClick == true{
            passwordTextField.isSecureTextEntry = true
        }else{
            passwordTextField.isSecureTextEntry = false
        }
        iconClick = !iconClick
    }
    
    @objc func lupaPasswordAction(){
        let lupaPasswordVC = storyboard?.instantiateViewController(identifier: "LupaPasswordViewController") as! LupaPasswordViewController
        self.navigationController?.pushViewController(lupaPasswordVC, animated: true)
    }
    
}


