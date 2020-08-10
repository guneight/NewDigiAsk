//
//  JenisProdukDetailViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukDetailViewController: UIViewController {
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
    let jenisProdukDetailView = UIView()
    let JenisProdukContainerView = UIView()
    let iconJenisProdukDetailImage = UIImageView()
    let namajenisProdukDetailLabel = UILabel()
    let startHargaProdukDetailLabel = UILabel()
    let lineHargaProdukDetail = UIView()
    let deskripsiJenisProdukDetail = UILabel()
    let daftarPremiTable = UITableView()
    var packet = [DetailJenisProduct]()
    var syaratKetentuan = ""
    var idDetailPacket = 0
    var heightDeskLabel : CGFloat = 0
    
    
    override func viewDidLoad() {
        FecthData()
        view.backgroundColor = .gray
        daftarPremiTable.delegate = self
        daftarPremiTable.dataSource = self
      
        super.viewDidLoad()
        daftarPremiTable.reloadData()
        setupNavBarJenisProdukDetail()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        
    }
    
    func FecthData() {
        print("idpacket :", idDetailPacket)
        DispatchQueue.main.async {
            FetchAllProduct.share.getDetailJenisProduct(id_packet_detail: "\(self.idDetailPacket)"){ (data) in
                self.packet = data
                self.heightdDeskripsiJenisProdukDetail(text: self.packet[0].packet.deskripsi2)
                print("heightdDeskripsiJenisProdukDetail = ", self.heightDeskLabel)
                self.setupUI()
                self.daftarPremiTable.reloadData()
                self.setupValue()
            }
        }
    }
    
    func heightdDeskripsiJenisProdukDetail(text : String){
            heightDeskLabel = heightForView(text: text, font: UIFont(name: fontNameHelper.NunitoRegular, size: 12)!, width: view.frame.size.width-100)
       }
    
    private func setupValue(){
        namajenisProdukDetailLabel.text = packet[0].packet.namaPacket
        startHargaProdukDetailLabel.text = packet[0].packet.deskripsi1
        deskripsiJenisProdukDetail.text = packet[0].packet.deskripsi2
    }
    
   
}
