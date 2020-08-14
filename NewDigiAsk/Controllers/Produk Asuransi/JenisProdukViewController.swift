//
//  JenisProdukViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class JenisProdukViewController: UIViewController {
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
    let jenisProdukView = UIView()
    let jenisProdukScrollView = UIScrollView()
    let namaProdukLabel = UILabel()
    let jenisProdukCOntainerView = UIView()
    let lineJenisProduk = UIView()
    let jenisProdukTable = UITableView()
    let jenisTableCell = jenisProdukTableViewCell()
    
    let jenisProdukLabel = UILabel()
    let startHargaProdukLabel = UILabel()
    let deskripsiJenisProdukLabel = UILabel()
    var productDetail = [ProductDetails]()
    var productId : String = ""
    var customHeigthLabel: CGFloat = 0
    let jenisProduk = ["Silver","Gold","Platinum"]
    let startHarga = ["Start From Rp 20.000,-", "Start From Rp 50.000,-", "Start From Rp 100.000,-"]
    let deskripsijenisProduk = "Memberikan perlindungan atas risiko kematian, cacat tetap, biaya perawatan dan atau pengobatan yang secara langsung disebabkan suatu kecelakaan. Kecelakaan yaitu suatu kejadian atau peristiwa yang mengandung unsur kekerasan, baik bersifat fisik maupun kimia, yang datangnya secara tiba-tiba, termasuk juga kecelakaan yaitu yang disebabkan karena keracunan makanan, uap dan gas, jatuh ke dalam air atau tenggelam."
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        jenisProdukTable.delegate = self
        jenisProdukTable.dataSource = self
        setupUI()
        setupNavBarJenisProdukDetail()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        view.layoutIfNeeded()
        jenisProdukTable.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    private func getData(){
        print("productId", productId)
        DispatchQueue.main.async {
            FetchAllProduct.share.getDetailProduct(id_packet: self.productId ){ (data) in
                self.productDetail = data
                self.namaProdukLabel.text = "         \(self.productDetail[0].productDetail.product.namaProduct)"
                self.heightDeskripsiLabel(text: self.productDetail[0].deskripsi2)
                self.jenisProdukTable.reloadData()
            }
        }
    }
    
    private func heightDeskripsiLabel(text : String){
        customHeigthLabel = heightForView(text: text, font: UIFont(name: fontNameHelper.NunitoRegular, size: 12)!, width: view.frame.size.width-100)
        
    }
    
    
}
