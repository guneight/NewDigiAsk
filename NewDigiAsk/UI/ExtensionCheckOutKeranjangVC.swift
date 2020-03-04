
//
//  CheckOutKeranjangVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 02/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension CheckOutKeranjangViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jumlahPembelianProduk
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "checkOUtCell", for: indexPath) as! checkOutTableCell
        cell.backgroundColor = .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func setupUI(){
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
              gesture.direction = .down
        let height = view.frame.size.height
        daftarPembelianTable.register(checkOutTableCell.self, forCellReuseIdentifier: "checkOUtCell")
        
        view.addSubview(pembelianBerupa)
        UIHelper.makeLabel(label: pembelianBerupa, corner: 0, allignment: .left, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, topAnchor: view.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 20, widthAnchor: 0)
        pembelianBerupa.text = "Anda melakukan pembelian berupa :"
        
        view.addSubview(daftarPembelianTable)
        daftarPembelianTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            daftarPembelianTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            daftarPembelianTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            daftarPembelianTable.topAnchor.constraint(equalTo: pembelianBerupa.bottomAnchor, constant: 15),
            daftarPembelianTable.heightAnchor.constraint(equalToConstant: height*0.7)
        ])
        daftarPembelianTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        daftarPembelianTable.showsVerticalScrollIndicator = false
        daftarPembelianTable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        daftarPembelianTable.layoutIfNeeded()
        
        view.addSubview(totalHargaLabel)
        UIHelper.makeLabel(label: totalHargaLabel, corner: 0, allignment: .right, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: daftarPembelianTable.bottomAnchor, leadingConstant: 30, trailingConstant: -47, topConstant: 5, heightAnchor: 20, widthAnchor: 0)
        totalHargaLabel.text = "Total : Rp 250.000"
        totalHargaLabel.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        view.addSubview(bayarButton)
        UIHelper.makeButton(button: bayarButton, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: totalHargaLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 10, corner: 24, heightAnchor: 48, widthAnchor: 0)
        bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        bayarButton.setTitle("BAYAR", for: .normal)
        
        
    }
    
    @objc func swipeDown() {
               self.dismiss(animated: true, completion: nil)
          }
}


class checkOutTableCell : UITableViewCell {
    let containerView = UIView()
    let namaProdukLabel = UILabel()
    let rightButton = UIButton()
    let underlineNamaProduk = UIView()
    let iconProdukImage = UIImageView()
    let deskripsiProduklabel = UILabel()
    let hargaLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(containerView)
               UIHelper.makeView(view: containerView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 135, widthAnchor: 0)
               contentView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
               containerView.backgroundColor = .white
        
        containerView.addSubview(namaProdukLabel)
        UIHelper.makeSmalllabel(smallLabel: namaProdukLabel, leadingAnchor: containerView.leadingAnchor, topAnchor: containerView.topAnchor, leadingConstant: 17, topConstant: 14, corner: 0, heightAnchor: 18, widthtAnchor: containerView.frame.size.width-43)
        namaProdukLabel.text =  "Asuransi Kecelakaan Diri"
        
        containerView.addSubview(rightButton)
             rightButton.translatesAutoresizingMaskIntoConstraints = false
             NSLayoutConstraint.activate([
                 rightButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 13),
                 rightButton.heightAnchor.constraint(equalToConstant: 11),
                 rightButton.widthAnchor.constraint(equalToConstant: 6),
                 rightButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -25)
             ])
        
             rightButton.backgroundColor = .brown
        
        containerView.addSubview(underlineNamaProduk)
        UIHelper.makeView(view: underlineNamaProduk, leadingAnchor: containerView.leadingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: namaProdukLabel.bottomAnchor, leadingConstant: 22, trailingConstant: -22, topConstant: 6.5, corner: 0, heightAnchor: 0.5, widthAnchor: containerView.frame.size.width-44)
               underlineNamaProduk.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
               
        containerView.addSubview(iconProdukImage)
        UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: containerView.leadingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 17, topConstant: 8.5, corner: 10, heightAnchor: 57)
        iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
        iconProdukImage.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)
               
        containerView.addSubview(deskripsiProduklabel)
        UIHelper.makeLabel(label: deskripsiProduklabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 12, trailingConstant: -22, topConstant: 8.5, heightAnchor: 35, widthAnchor: 0)
        deskripsiProduklabel.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
