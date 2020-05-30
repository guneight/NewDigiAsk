//
//  BayarKartuKreditViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class BayarKartuKreditViewController: UIViewController {
    
    let produkBaseView = UIView()
    let prosesStackView : UIStackView = {
        let stackViewCV = UIStackView()
        stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
        stackViewCV.distribution = UIStackView.Distribution.fillEqually
        stackViewCV.alignment = UIStackView.Alignment.center
        stackViewCV.backgroundColor = #colorLiteral(red: 0.2131774127, green: 0.6528760791, blue: 1, alpha: 1)
        stackViewCV.translatesAutoresizingMaskIntoConstraints = false
        stackViewCV.spacing = 30
        return stackViewCV
    }()
    let lineView = UIView()
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
    
    let kartuKreditScrollView = UIScrollView()
    let kartuKreditBaseView = UIView()
    let totalPembayaranView = UIView()
    let totalPembayaranLabel = UILabel()
    let nilaiTotalPembayaranLabel = UILabel()
    let rightButtonImage = UIImageView()
    
    let kartuKreditView = UIView()
    let kartuKreditDebitLabel = UILabel()
    let underlineKartuKredit = UIView()
    let masterCardIcon = UIImageView()
    let masterCardLabel = UILabel()
    let underlineMastercard = UIView()
    let nomorKartuLabel = UILabel()
    let nomorKartuTextField = UITextField()
    let underlineNomorKartu = UIView()
    let masaBerlakuLabel = UILabel()
    let CCVLabel = UILabel()
    let mmTextfield = UITextField()
    let yyTextfield = UITextField()
    let CVVLabel = UILabel()
    let CVVTextfielsd = UITextField()
    let simpanNomorKartuButton = UIButton()
    let simpanNomorkartuLabel = UILabel()
    let pilihPembayaranLabel = UILabel()
    let checkBoxBayarPenuh = UIButton()
    let bayarpenuhLabel = UILabel()
    let checkBoxBayarCicilan = UIButton()
    let bayarCicilanTextField = UITextField()
    let dropDownImage = UIImageView()
    let bayarCicilanPickerView = UIPickerView()
    let bayarButton = UIButton()
    
    let bulanBayarCicilan = ["3","6","12"]
    let hargaBayarPerbulan = ["100.000","75.000","50.000"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarBayarKartuKredit()
        bayarCicilanPickerView.delegate = self
        bayarCicilanPickerView.dataSource = self
        
        checkBoxBayarCicilan.tag = 0
        checkBoxBayarPenuh.tag = 0
        simpanNomorKartuButton.tag = 0
        
        bayarCicilanPicker()
        simpanNomorKartuButton.addTarget(self, action: #selector(simpanNomorAction), for: .touchUpInside)
        checkBoxBayarPenuh.addTarget(self, action: #selector(checkBoxBayarPenuhAction), for: .touchUpInside)
        checkBoxBayarCicilan.addTarget(self, action: #selector(checkBoxCicilanAction), for: .touchUpInside)
        bayarButton.addTarget(self, action: #selector(bayarAction), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    @objc func bayarAction(){
        let selesaiBayarVC = storyboard?.instantiateViewController(identifier: "SelesaiBayarKartuKreditViewController") as! SelesaiBayarKartuKreditViewController
        self.navigationController?.pushViewController(selesaiBayarVC, animated: true)
    }
    
    @objc func checkBoxBayarPenuhAction(){
        if checkBoxBayarPenuh.tag == 0{
            checkBoxBayarPenuh.setImage(UIImage(named: "checkBoxIcon"), for: .normal)
            checkBoxBayarPenuh.tag += 1
        }else if checkBoxBayarPenuh.tag == 1 {
            checkBoxBayarPenuh.setImage(UIImage(named: "checkfinishWhite"), for: .normal)
            checkBoxBayarPenuh.tag = 0
        }
    }
    
    @objc func simpanNomorAction(){
        if simpanNomorKartuButton.tag == 0{
            simpanNomorKartuButton.setImage(UIImage(named: "checkBoxIcon"), for: .normal)
            simpanNomorKartuButton.tag += 1
        }else if simpanNomorKartuButton.tag == 1 {
            simpanNomorKartuButton.setImage(UIImage(named: "checkfinishWhite"), for: .normal)
            simpanNomorKartuButton.tag = 0
        }
    }
    
    @objc func checkBoxCicilanAction(sender : UIButton){
        if checkBoxBayarCicilan.tag == 0 {
            checkBoxBayarCicilan.setImage(UIImage(named: "checkBoxIcon"), for: .normal)
            bayarCicilanTextField.becomeFirstResponder()
            checkBoxBayarCicilan.tag += 1
        }else if checkBoxBayarCicilan.tag == 1{
            checkBoxBayarCicilan.setImage(UIImage(named: "checkfinishWhite"), for: .normal)
            donePickerView()
            checkBoxBayarCicilan.tag = 0
        }
    }
    
    
    
    
}
