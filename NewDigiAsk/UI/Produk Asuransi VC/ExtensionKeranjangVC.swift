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
        print("productInCart.count table :", productCart)
        return productInCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "produkKeranjangCell", for: indexPath)  as! daftarProdukKeranjangTableViewCells
        cell.selectionStyle = .none
        cell.layoutIfNeeded()
        cell.iconProdukImage.image = UIImage(named: "\(productInCart[indexPath.row].namaProduct)")
        cell.namaProdukLabel.text = productInCart[indexPath.row].namaProduct
//        cell.deskripsiManfaatLabel.text = deskripsiProduk[indexPath.row]
        cell.nominalLabel.text = String(productInCart[indexPath.row].premi)
        
        cell.rightArrowButton.addTarget(self, action: #selector(rightButtonAction(sender:)), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(namaProdukAction(sender:)))
        cell.namaProdukLabel.addGestureRecognizer(tapGesture)
       
        if selectRows.contains(indexPath){
            cell.checkCellButton.setImage(UIImage(named: "checkBoxIcon"), for: .normal)
            cell.checkCellButton.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        }else{
            cell.checkCellButton.setImage(UIImage(named: "checkBoxDisableIcon"), for: .normal)
            cell.checkCellButton.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        
        cell.checkCellButton.tag = indexPath.row
        cell.checkCellButton.addTarget(self, action: #selector(checkBoxAction(sender:)), for: .touchUpInside)
        
        cell.trushOptioButton.tag = indexPath.row
        cell.trushOptioButton.addTarget(self, action: #selector(deleteSelectProduk(sender:)), for: .touchUpInside)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    
    func setupUI(){
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(produkBaseView)
        produkBaseView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkBaseView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            produkBaseView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            produkBaseView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            produkBaseView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        produkBaseView.layer.cornerRadius = 20
        produkBaseView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        produkBaseView.backgroundColor = #colorLiteral(red: 0.6549019608, green: 0.6980392157, blue: 0.8980392157, alpha: 0.7728756421)
        produkBaseView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2017337329)
        produkBaseView.layoutIfNeeded()
        
        produkBaseView.addSubview(lineView)
           lineView.translatesAutoresizingMaskIntoConstraints = false
             NSLayoutConstraint.activate([
                 lineView.widthAnchor.constraint(equalToConstant: 280),
                 lineView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                 lineView.heightAnchor.constraint(equalToConstant: 2),
                 lineView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 32)
             ])
        lineView.backgroundColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        
        prosesStackView.translatesAutoresizingMaskIntoConstraints =  false
        produkBaseView.addSubview(prosesStackView)
        NSLayoutConstraint.activate([
            prosesStackView.topAnchor.constraint(equalTo: produkBaseView.topAnchor, constant: 15),
            prosesStackView.widthAnchor.constraint(equalToConstant: 290),
            prosesStackView.centerXAnchor.constraint(equalTo: produkBaseView.centerXAnchor),
            prosesStackView.heightAnchor.constraint(equalToConstant: 35)
        ])
        prosesStackView.layoutIfNeeded()
        prosesStackView.backgroundColor?.withAlphaComponent(0)
        prosesStackView.alignment = .center
        prosesStackView.axis = .horizontal
        prosesStackView.distribution = UIStackView.Distribution.fillEqually
        
        prosesStackView.addArrangedSubview(produkImage)
        produkImage.translatesAutoresizingMaskIntoConstraints = false
        produkImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        produkImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        produkImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        produkImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        produkImage.image = UIImage(named: "produkIcon")
        produkImage.contentMode = .center
        produkImage.layer.masksToBounds = true
        produkImage.layer.cornerRadius = 17
        produkImage.layer.borderWidth = 1
        
        
        prosesStackView.addArrangedSubview(tertanggungImage)
        tertanggungImage.translatesAutoresizingMaskIntoConstraints = false
        tertanggungImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        tertanggungImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tertanggungImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        tertanggungImage.layer.masksToBounds = true
        tertanggungImage.layer.cornerRadius = 17
        tertanggungImage.image = UIImage(named: "profileIcon")
        tertanggungImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(kerangjangImage)
        kerangjangImage.translatesAutoresizingMaskIntoConstraints = false
        kerangjangImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        kerangjangImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        kerangjangImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        kerangjangImage.layer.masksToBounds = true
        kerangjangImage.layer.cornerRadius = 17
        kerangjangImage.image = UIImage(named: "keranjangIconWhite")
        kerangjangImage.contentMode = .center
        
        
        prosesStackView.addArrangedSubview(checkOutImage)
        checkOutImage.translatesAutoresizingMaskIntoConstraints = false
        checkOutImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        checkOutImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        checkOutImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        checkOutImage.layer.masksToBounds = true
        checkOutImage.layer.cornerRadius = 17
        checkOutImage.image = UIImage(named: "rpIcon")
        checkOutImage.contentMode = .center
        
        prosesStackView.addArrangedSubview(completeImage)
        completeImage.translatesAutoresizingMaskIntoConstraints = false
        completeImage.heightAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.widthAnchor.constraint(equalToConstant: 34).isActive = true
        completeImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        completeImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        completeImage.layer.masksToBounds = true
        completeImage.layer.cornerRadius = 17
        completeImage.image = UIImage(named: "checkfinishIcon")
        completeImage.contentMode = .center
        
        
        produkBaseView.addSubview(keranjangBaseView)
        UIHelper.makeView(view: keranjangBaseView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: produkBaseView.frame.size.height, widthAnchor: 0)
        keranjangBaseView.backgroundColor = .white
        
        keranjangBaseView.addSubview(pilihSemuaProdukButton)
        UIHelper.makeButton(button: pilihSemuaProdukButton, leadingAnchor: keranjangBaseView.leadingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: keranjangBaseView.topAnchor, leadingConstant: 22, trailingConstant:-(width-36), topConstant: 22, corner: 4, heightAnchor: 14, widthAnchor: 14)
        pilihSemuaProdukButton.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        pilihSemuaProdukButton.layer.borderWidth = 1
        
        keranjangBaseView.addSubview(pilihSemuaProduk)
        UIHelper.makeLabel(label: pilihSemuaProduk, corner: 0, allignment: .left, leadingAnchor: pilihSemuaProdukButton.trailingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: keranjangBaseView.topAnchor, leadingConstant: 12, trailingConstant: -76 , topConstant: 22, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: pilihSemuaProduk, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 10, text: "Pilih Semua Produk", kerning: 0.5)
        
        keranjangBaseView.addSubview(trushButton)
        UIHelper.makeButton(button: trushButton, leadingAnchor: pilihSemuaProduk.trailingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: keranjangBaseView.topAnchor, leadingConstant: 5, trailingConstant: -24, topConstant: 22, corner: 0, heightAnchor: 17, widthAnchor: 0)
        trushButton.setImage(UIImage(named: "trushhapus"), for: .normal)
        trushButton.contentMode = .scaleAspectFit
        
        keranjangBaseView.addSubview(daftarProdukKeranjangTable)
        daftarProdukKeranjangTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            daftarProdukKeranjangTable.leadingAnchor.constraint(equalTo: keranjangBaseView.safeAreaLayoutGuide.leadingAnchor),
            daftarProdukKeranjangTable.trailingAnchor.constraint(equalTo: keranjangBaseView.safeAreaLayoutGuide.trailingAnchor),
            daftarProdukKeranjangTable.topAnchor.constraint(equalTo: pilihSemuaProdukButton.bottomAnchor, constant: 15),
            daftarProdukKeranjangTable.heightAnchor.constraint(equalToConstant: height*0.7)
        ])
        daftarProdukKeranjangTable.register(daftarProdukKeranjangTableViewCells.self, forCellReuseIdentifier: "produkKeranjangCell")
        daftarProdukKeranjangTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        daftarProdukKeranjangTable.showsVerticalScrollIndicator = false
        daftarProdukKeranjangTable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        daftarProdukKeranjangTable.layoutIfNeeded()
        daftarProdukKeranjangTable.allowsSelection = false
        keranjangBaseView.addSubview(checkOutButton)
        UIHelper.makeButton(button: checkOutButton, leadingAnchor: keranjangBaseView.leadingAnchor, trailingAnchor: keranjangBaseView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: -20, corner: 24, heightAnchor: 48, widthAnchor: 0)
       
        checkOutButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        checkOutButton.setTitle("CHECKOUT", for: .normal)
        
        keranjangBaseView.addSubview(tableIndicator)
        tableIndicator.translatesAutoresizingMaskIntoConstraints =  false
        NSLayoutConstraint.activate([
            tableIndicator.widthAnchor.constraint(equalToConstant: 40),
            tableIndicator.heightAnchor.constraint(equalToConstant: 40),
            tableIndicator.centerXAnchor.constraint(equalTo: daftarProdukKeranjangTable.centerXAnchor),
            tableIndicator.centerYAnchor.constraint(equalTo: daftarProdukKeranjangTable.centerYAnchor)
        ])
        tableIndicator.tintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        tableIndicator.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tableIndicator.startAnimating()
    }
    
    func setupNavBarKeranjang(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
               UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "IDENTITAS", kerning: 0)
               navigationItem.titleView = titleLabel
        
    }
    
    @objc func backButtonTapped() {
        
        navigationController?.popViewController(animated: true)
    }
    
    @objc func checkBoxAction(sender : UIButton){
        let selectedIndexPath = IndexPath(row: sender.tag, section: 0)
        if selectRows.contains(selectedIndexPath){
            self.selectRows.remove(at: self.selectRows.firstIndex(of: selectedIndexPath)!)
        }else{
            self.selectRows.append(selectedIndexPath)
        }
        self.daftarProdukKeranjangTable.reloadData()
    }
    
    @objc func pilihSemuaProduk(sender : UIButton){
        self.selectRows = getAllIndexPath()
        self.daftarProdukKeranjangTable.reloadData()
    }
    
    func getAllIndexPath()->[IndexPath]{
        var indexPaths : [IndexPath] = []
          if pilihSemuaProdukButton.tag == 0{
            for j in 0..<daftarProdukKeranjangTable.numberOfRows(inSection: 0){
                indexPaths.append(IndexPath(row: j, section: 0))
                pilihSemuaProdukButton.setImage(UIImage(named: "checkBoxIcon"), for: .normal)
                pilihSemuaProdukButton.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
               
            }
             pilihSemuaProdukButton.tag += 1
          }else {
                indexPaths.removeAll()
                pilihSemuaProdukButton.setImage(UIImage(named: "checkBoxDisableIcon"), for: .normal)
                pilihSemuaProdukButton.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
                pilihSemuaProdukButton.tag = 0
            }
            
        return indexPaths
    }
    
    @objc func deleteAllProduk(){
        let alertDeleteAll = UIAlertController(title: "Hapus Semua Produk", message: "Apakah Anda yakin untuk menghapus semua produk?", preferredStyle: .alert)
        alertDeleteAll.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertDeleteAll.addAction(UIAlertAction(title: "Hapus", style: .destructive, handler: {(action)-> Void in
            self.productInCart.removeAll()
            self.daftarProdukKeranjangTable.reloadData()
            self.trushButton.isEnabled = false
            self.checkOutButton.setTitle(" < PILIH PRODUK", for: .normal)
            self.checkOutButton.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            
        }))
        self.present(alertDeleteAll, animated: true)
    }
    
    @objc func deleteSelectProduk(sender : UIButton){
        let selectedIndexPath = IndexPath(row: sender.tag, section: 0)
        let alertDeleteProduct = UIAlertController(title: "Hapus Produk", message: "Apakah Anda yakin untuk menghapus produk ini ?", preferredStyle: .alert)

        alertDeleteProduct.addAction(UIAlertAction(title: "Hapus", style: .destructive, handler: {(action)-> Void in
            self.productInCart.remove(at: selectedIndexPath.row)
            self.daftarProdukKeranjangTable.reloadData()
          
        }))
         alertDeleteProduct.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alertDeleteProduct, animated: true)
    }
    
}

class daftarProdukKeranjangTableViewCells: UITableViewCell  {
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
        checkCellButton.isUserInteractionEnabled = true
        checkCellButton.contentMode = .center
        
        containerView.addSubview(namaProdukLabel)
        UIHelper.makeSmalllabel(smallLabel: namaProdukLabel, leadingAnchor: checkCellButton.trailingAnchor, topAnchor: containerView.topAnchor, leadingConstant: 12, topConstant: 13, corner: 0, heightAnchor: 18, widthtAnchor: containerView.frame.size.width)
        UIHelper.setTextLabel(label: namaProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.12)
        namaProdukLabel.isUserInteractionEnabled = true
        
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
        UIHelper.setTextLabel(label: nominalLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 14, text: " ", kerning: 0.12)
        containerView.addSubview(trushOptioButton)
        UIHelper.makeSmallButton(smallButton: trushOptioButton, leadingAnchor: containerView.trailingAnchor, topAnchor: nominalLabel.bottomAnchor, leadingConstant: -40, topConstant: 3, corner: 0, heightAnchor: 15, widthtAnchor: 15, borderWidth: 0, colorBorder: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)  )
        trushOptioButton.setImage(UIImage(named: "trashicon"), for: .normal)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}


