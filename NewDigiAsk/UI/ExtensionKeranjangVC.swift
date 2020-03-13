//
//  ExtensionKeranjangVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension KeranjangViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jumlahProdukdiKreanjang
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "produkKeranjang", for: indexPath)  as! daftarProdukKeranjangTableViewCell
         cell.selectionStyle = .none
        cell.layoutIfNeeded()
        cell.iconProdukImage.image = UIImage(named: "\(namaProdukArray[indexPath.row])")
        cell.namaProdukLabel.text = namaProdukArray[indexPath.row]
        cell.deskripsiManfaatLabel.text = "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam"
        cell.nominalLabel.text = "Rp 250.000,-"
        
//        cell.rightArrowButton.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func setupUI(){
     
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
        gesture.direction = .down
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        view.backgroundColor = .clear
        view.addSubview(keranjangBaseView)
        UIHelper.makeView(view: keranjangBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 45, corner: 20, heightAnchor: 0, widthAnchor: 0)
        keranjangBaseView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        keranjangBaseView.backgroundColor = .white
        
        keranjangBaseView.addSubview(pilihSemuaProdukButton)
        UIHelper.makeButton(button: pilihSemuaProdukButton, leadingAnchor: keranjangBaseView.leadingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: keranjangBaseView.topAnchor, leadingConstant: 22, trailingConstant:-(width-36), topConstant: 22, corner: 4, heightAnchor: 14, widthAnchor: 14)
        pilihSemuaProdukButton.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        pilihSemuaProdukButton.layer.borderWidth = 1
        
        keranjangBaseView.addSubview(pilihSemuaProduk)
        UIHelper.makeLabel(label: pilihSemuaProduk, corner: 0, allignment: .left, leadingAnchor: pilihSemuaProdukButton.trailingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: keranjangBaseView.topAnchor, leadingConstant: 12, trailingConstant: -76 , topConstant: 22, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihSemuaProduk, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 10, text: "Pilih Semua Produk", kerning: 0.5)

        keranjangBaseView.addSubview(trushButton)
        UIHelper.makeButton(button: trushButton, leadingAnchor: pilihSemuaProduk.trailingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: keranjangBaseView.topAnchor, leadingConstant: 12, trailingConstant: -24, topConstant: 22, corner: 0, heightAnchor: 17, widthAnchor: 0)
        trushButton.setImage(UIImage(named: "trushhapus"), for: .normal)
        trushButton.contentMode = .center
        
        keranjangBaseView.addSubview(daftarProdukKeranjangTable)
        daftarProdukKeranjangTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            daftarProdukKeranjangTable.leadingAnchor.constraint(equalTo: keranjangBaseView.safeAreaLayoutGuide.leadingAnchor),
            daftarProdukKeranjangTable.trailingAnchor.constraint(equalTo: keranjangBaseView.safeAreaLayoutGuide.trailingAnchor),
            daftarProdukKeranjangTable.topAnchor.constraint(equalTo: pilihSemuaProdukButton.bottomAnchor, constant: 15),
            daftarProdukKeranjangTable.heightAnchor.constraint(equalToConstant: height*0.7-35)
        ])
        daftarProdukKeranjangTable.register(daftarProdukKeranjangTableViewCell.self, forCellReuseIdentifier: "produkKeranjang")
        daftarProdukKeranjangTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        daftarProdukKeranjangTable.showsVerticalScrollIndicator = false
        daftarProdukKeranjangTable.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        daftarProdukKeranjangTable.layoutIfNeeded()
        
        keranjangBaseView.addSubview(checkOutButton)
        UIHelper.makeButton(button: checkOutButton, leadingAnchor: keranjangBaseView.leadingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: daftarProdukKeranjangTable.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 15, corner: 24, heightAnchor: 48, widthAnchor: 0)
        print("checkOutButton :", checkOutButton.frame.size.width)
        checkOutButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        checkOutButton.setTitle("CHECKOUT", for: .normal)

    }
    
    @objc func swipeDown() {
            self.dismiss(animated: true, completion: nil)
       }
    
}

class daftarProdukKeranjangTableViewCell: UITableViewCell {
       let containerView = UIView()
       let checkCellButton = UIButton()
       let namaProdukLabel = UILabel()
       let rightArrowButton = UIButton()
       let iconProdukImage = UIImageView()
       let deskripsiManfaatLabel = UILabel()
       let nominalLabel = UILabel()
       let underlineNamaProduk = UIView()
       let trushOptioButton = UIButton()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(containerView)
        UIHelper.makeView(view: containerView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 135, widthAnchor: 0)
        contentView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
        containerView.backgroundColor = .white
        
        containerView.addSubview(checkCellButton)
        UIHelper.makeSmallButton(smallButton: checkCellButton, leadingAnchor: containerView.leadingAnchor, topAnchor: containerView.topAnchor, leadingConstant: 22, topConstant: 13, corner: 4, heightAnchor: 14, widthtAnchor: 14, borderWidth: 1, colorBorder: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        checkCellButton.setImage(UIImage(named: "checkfinish"), for: .normal)
        checkCellButton.contentMode = .center
        
        containerView.addSubview(namaProdukLabel)
        UIHelper.makeSmalllabel(smallLabel: namaProdukLabel, leadingAnchor: checkCellButton.trailingAnchor, topAnchor: containerView.topAnchor, leadingConstant: 12, topConstant: 13, corner: 0, heightAnchor: 18, widthtAnchor: containerView.frame.size.width-43)
        UIHelper.setTextLabel(label: namaProdukLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.12)
        
        containerView.addSubview(rightArrowButton)
        rightArrowButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightArrowButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 13),
            rightArrowButton.heightAnchor.constraint(equalToConstant: 11),
            rightArrowButton.widthAnchor.constraint(equalToConstant: 6),
            rightArrowButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -25)
        ])
        rightArrowButton.setImage(UIImage(named: "next"), for: .normal)
   
        
        containerView.addSubview(underlineNamaProduk)
        UIHelper.makeView(view: underlineNamaProduk, leadingAnchor: containerView.leadingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: namaProdukLabel.bottomAnchor, leadingConstant: 22, trailingConstant: -22, topConstant: 6.5, corner: 0, heightAnchor: 0.5, widthAnchor: containerView.frame.size.width-44)
        underlineNamaProduk.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        containerView.addSubview(iconProdukImage)
        UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: containerView.leadingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 48, topConstant: 8.5, corner: 10, heightAnchor: 57)
        iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
        iconProdukImage.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)
        iconProdukImage.contentMode = .center
        containerView.addSubview(deskripsiManfaatLabel)
        UIHelper.makeLabel(label: deskripsiManfaatLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 12, trailingConstant: -22, topConstant: 8.5, heightAnchor: 35, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiManfaatLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 10, text: " ", kerning: 0.5)
        deskripsiManfaatLabel.numberOfLines = 0
        
        containerView.addSubview(nominalLabel)
        UIHelper.makeLabel(label: nominalLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: deskripsiManfaatLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -22, topConstant: 5, heightAnchor: 20, widthAnchor: 0)
        UIHelper.setTextLabel(label: nominalLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 10, text: " ", kerning: 0.12)
        containerView.addSubview(trushOptioButton)
        UIHelper.makeSmallButton(smallButton: trushOptioButton, leadingAnchor: containerView.trailingAnchor, topAnchor: nominalLabel.bottomAnchor, leadingConstant: -40, topConstant: 3, corner: 0, heightAnchor: 15, widthtAnchor: 15, borderWidth: 0, colorBorder: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)  )
        trushOptioButton.setImage(UIImage(named: "trashicon"), for: .normal)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
   
    
    
    
}

