//
//  IdentitasTertanggungdanPenerimaManfaatViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 27/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class IdentitasTertanggungdanPenerimaManfaatViewController: UIViewController {
    let identitasbaseView = UIView()
    let identitasScrollView = UIScrollView()
    let identitasContainerView = UIView()
    
    let headerIdentitasTertanggung = UILabel()
    let namaLengkapLabel = UILabel()
    let namaLengkapTextField = UITextField()
    let underLineNamaLengkap = UIView()
    let nomorKTPLabel = UILabel()
    let nomorKTPTextField = UITextField()
    let underLineKTP = UIView()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let underLineEmail = UIView()
    let nomorTeleponLabel = UILabel()
    let nomorTeleponTextField = UITextField()
    let underLineTelepon = UIView()
    
    let identitasPenerimaManfaatLabel = UILabel()
    let namaLengkapPenerimaManfaatLabel = UILabel()
    let namaLengkapPenerimaManfaatTextField = UITextField()
    let underLinenamaLengkapPenerimaManfaat = UIView()
    let nomorKTPPenerimaManfaatLabel = UILabel()
    let nomorKTPPenerimaManfaatTextField = UITextField()
    let underLinenomorKTPPenerimaManfaat = UIView()
    let emailPenerimaManfaatLabel = UILabel()
    let emailPenerimaManfaatTextField = UITextField()
    let underLineEmailPenerimaManfaat = UIView()
    let nohpPenerimaManfaatLabel = UILabel()
    let nohpPenerimaManfaatTextField = UITextField()
    let underLinenoHpPenerimaManfaat = UIView()
    
    let masakAktifLabel = UILabel()
    let pilihWaktuAktifPolisLabel = UILabel()
    let waktuTextField = UITextField()
    let underLineWaktu = UIView()
    
    let tambahKerajangbutton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.layoutIfNeeded()
        tambahKerajangbutton.addTarget(self, action: #selector(tambahKeranjangAction(sender:)), for: .touchUpInside)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    
    @objc func tambahKeranjangAction(sender :Any){
        let kerangjangVC = storyboard?.instantiateViewController(identifier: "KeranjangViewController") as! KeranjangViewController
       
        kerangjangVC.modalPresentationStyle = .custom
        kerangjangVC.transitioningDelegate = PresentationDelegate
        present(kerangjangVC, animated: true, completion: nil)
        
    }
   
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

}
