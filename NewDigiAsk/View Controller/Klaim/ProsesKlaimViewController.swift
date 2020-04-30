//
//  ProsesKlaimViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class ProsesKlaimViewController: UIViewController {
    let prosesdKlaimScrollView = UIScrollView()
    let prosesKlaimView = UIView()
    let dataDisiapkanLabel = UILabel()
    let kartuIdentitasLabel = UILabel()
    let deskripsiKsrtuIdentitasLabel = UILabel()
    let suratBuktiKematianLabel = UILabel()
    let deskripsiBuktiKematianLabel = UILabel()
    let kartuKeluargaLabel = UILabel()
    let deskripsiKartuKeluarga = UILabel()
    
    let dataPolisView = UIView()
    let headerNomorPolisLabel = UILabel()
    let nomorPolisLabel = UILabel()
    let lineNomortTransaksi = UIView()
    let headerStatusPolis = UILabel()
    let statusPolisLabel = UILabel()
    let lineStatusPolis = UIView()
    let headerMasaBerkaku = UILabel()
    let masaBerlakuLabel = UILabel()
    
    let dataKlaimView = UIView()
    let dataKlaimLabel = UILabel()
    let lineDataKlaim = UIView()
    let typeKlaim = UILabel()
    let namaTypeKlaim = UITextField()
    let ManfaatPickerView = UIPickerView()
    let lanjutButton = UIButton()
    
    let jenisKlaim = ["Kematian","Cacat Sebagian","Cacat Permanen"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUIProsesKlaim()
        view.layoutIfNeeded()
        ManfaatPickerView.delegate = self
        ManfaatPickerView.dataSource = self
       jenisKlaimpPickerView()
        lanjutButton.addTarget(self, action: #selector(lanjutAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

   
    // MARK: - Navigation
    @objc func lanjutAction(sender : Any){
        let ambilFotoKTPVC = storyboard?.instantiateViewController(identifier: "AmbilFotoKTPViewController") as! AmbilFotoKTPViewController
        navigationController?.pushViewController(ambilFotoKTPVC, animated: true)
    }

}


extension ProsesKlaimViewController : UIPickerViewDelegate , UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return jenisKlaim.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let jenisKlaimSelected = jenisKlaim[row]
        namaTypeKlaim.text = "\(jenisKlaimSelected)"
       }
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return jenisKlaim[row]
       }
    
    
}
