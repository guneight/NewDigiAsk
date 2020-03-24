//
//  EditProfileViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 04/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController, UITextFieldDelegate {
    let editProfileScrollView = UIScrollView()
    let editProfileBaseView = UIView()
    let attributView = UIImageView()
    let profileWhiteView = UIView()
    let photoImage = UIImageView()
    let namaLengkapLabel = UILabel()
    let namaLengkapTextField = UITextField()
    let editNamaLengkapButton = UIButton()
    let lineNamaLengkap = UIView()
    
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let editEmailButton = UIButton()
    let lineEmail = UIView()
    
    let kataSandiLabel = UILabel()
    let kataSandiTextField = UITextField()
    let lineKataSandi = UIView()
    let editKataSandiButton = UIButton()
    
    let nomorTeleponLabel  = UILabel()
    let nomorTeleponTextField = UITextField()
    let editNomorTeleponButton = UIButton()
    let linenomorTelepon = UIView()
    
    let tanggalLahirLabel  = UILabel()
    let tanggalLahirTextField = UITextField()
    let editTanggalahirButton = UIButton()
    let lineTanggalLahir = UIView()
    
    let kartuIdentitasLabel = UILabel()
    let kartuIdentitasTextField = UITextField()
    let editKartuIdentitasButton = UIButton()
    let lineKartuIdentitas = UIView()
    
    let alamatLabel = UILabel()
    let alamatTextField = UITextField()
    let editAlamatButton = UIButton()
    let lineAlamat = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        setupNavBar()
        setupUI()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

 
}
