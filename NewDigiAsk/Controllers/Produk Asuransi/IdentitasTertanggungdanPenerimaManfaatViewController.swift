//
//  IdentitasTertanggungdanPenerimaManfaatViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 27/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class IdentitasTertanggungdanPenerimaManfaatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
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
    let viewContainerTableProduk = UIView()
    let produkTable = UITableView()
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
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
    let datePicker = UIDatePicker()
    
    let IdentitasTertanggungTableView = UITableView()
    let penerimaManfaatTableView = UITableView()
    var penerimaManfaat : Daftar?
    var productInCart = [ProductinCart]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarIdentitas()
        pickerDateWaktuPolis()
        view.layoutIfNeeded()
        IdentitasTertanggungTableView.delegate = self
        IdentitasTertanggungTableView.dataSource = self
        penerimaManfaatTableView.delegate = self
        penerimaManfaatTableView.dataSource = self
        IdentitasTertanggungTableView.reloadData()
        penerimaManfaatTableView.reloadData()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        tambahKerajangbutton.addTarget(self, action: #selector(tambahKeranjangAction(sender:)), for: .touchUpInside)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(closeDatePicker))
        view.addGestureRecognizer(tapGesture)
        
        print(penerimaManfaat?.daftarTertanggung.count)
    }
    
    
    @objc func tambahKeranjangAction(sender :Any){
        let kerangjangVC = storyboard?.instantiateViewController(identifier: "KeranjangViewController") as! KeranjangViewController
        self.navigationController?.pushViewController(kerangjangVC, animated: true)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == IdentitasTertanggungTableView {
            return penerimaManfaat?.daftarTertanggung.count ?? 0
        }else {
            return penerimaManfaat?.penerimaManfaat.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == IdentitasTertanggungTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "IdentitastertanggungTbc", for: indexPath) as! IdentitastertanggungTbc
            cell.namaIdentitasTertanggunglabel.text = penerimaManfaat?.daftarTertanggung[indexPath.row].nama
            cell.backgroundColor = .white
            cell.cellAction = {[weak self] in
                guard let strongSelf = self  else {return}
                self!.namaLengkapTextField.text = self?.penerimaManfaat?.daftarTertanggung[indexPath.row].nama
                self!.nomorKTPTextField.text = self?.penerimaManfaat?.daftarTertanggung[indexPath.row].noKTP
                self!.emailTextField.text = self?.penerimaManfaat?.daftarTertanggung[indexPath.row].email
                self!.nomorTeleponTextField.text = self?.penerimaManfaat?.daftarTertanggung[indexPath.row].noTelp
                self!.IdentitasTertanggungTableView.isHidden = true
                let bottomOffset = CGPoint(x: 0, y: self!.identitasScrollView.contentSize.height - self!.identitasScrollView.bounds.size.height/0.82)
                self!.identitasScrollView.setContentOffset(bottomOffset, animated: true)
                self!.penerimaManfaatTableView.isHidden = false
            }
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "penerimaManfaatTbc", for: indexPath) as! penerimaManfaatTbc
            cell.namaIdentitasTertanggunglabel.text = penerimaManfaat?.penerimaManfaat[indexPath.row].nama
            cell.backgroundColor = .white

            cell.cellAction = {[weak self] in
                guard let strongSelf = self  else {return}
                self!.namaLengkapPenerimaManfaatTextField.text = self?.penerimaManfaat?.penerimaManfaat[indexPath.row].nama
                self!.nomorKTPPenerimaManfaatTextField.text = self?.penerimaManfaat?.penerimaManfaat[indexPath.row].noKTP
                self!.emailPenerimaManfaatTextField.text = self?.penerimaManfaat?.penerimaManfaat[indexPath.row].email
                self!.nohpPenerimaManfaatTextField.text = self?.penerimaManfaat?.penerimaManfaat[indexPath.row].noTelp
                self!.penerimaManfaatTableView.isHidden = true
                let bottomOffset = CGPoint(x: 0, y: self!.identitasScrollView.contentSize.height - self!.identitasScrollView.bounds.size.height)
                self!.identitasScrollView.setContentOffset(bottomOffset, animated: true)
            }
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == IdentitasTertanggungTableView {
            return 35
        }else {
            return 35
        }
    }
    
    
    
    
}
