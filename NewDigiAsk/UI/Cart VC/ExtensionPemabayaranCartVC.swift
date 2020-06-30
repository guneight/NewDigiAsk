//
//  ExtensionPemabayaranCartVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension PembayaranCartViewController: UITableViewDelegate, UITableViewDataSource {
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return jumlahPembelianProduk
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "checkOUtCartCell", for: indexPath) as! checkOutCartTableCell
            cell.backgroundColor = .white
            cell.namaProdukLabel.text = namaProdukArray[indexPath.row]
            cell.deskripsiProduklabel.text = "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam"
            cell.hargaLabel.text = "Rp 250.000,-"
            cell.iconProdukImage.image = UIImage(named: "\(namaProdukArray[indexPath.row])")
            
            cell.rightButton.addTarget(self, action: #selector(rightButtonAction(sender:)), for: .touchUpInside)
            let tapgesture = UITapGestureRecognizer(target: self, action: #selector(namaProdukAction(sender:)))
            cell.namaProdukLabel.addGestureRecognizer(tapgesture)
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 140
        }
        
        func setupUI(){
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
            UIHelper.makeView(view: lineView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: (view.frame.size.width-290)/2 , trailingConstant: -((view.frame.size.width-290)/2), topConstant: 32, corner: 0, heightAnchor: 2, widthAnchor: 0)
            lineView.widthAnchor.constraint(equalToConstant: view.frame.size.width-290).isActive = true
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
            
            
            daftarPembelianTable.register(checkOutCartTableCell.self, forCellReuseIdentifier: "checkOUtCartCell")
            
            produkBaseView.addSubview(checkOutView)
            UIHelper.makeView(view: checkOutView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: 0, widthAnchor: 0)
            checkOutView.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor).isActive = true
            checkOutView.backgroundColor = .white
            
            checkOutView.addSubview(pembelianBerupa)
            UIHelper.makeLabel(label: pembelianBerupa, corner: 0, allignment: .left, leadingAnchor: checkOutView.leadingAnchor, trailingAnchor: checkOutView.trailingAnchor, topAnchor: checkOutView.topAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 15, heightAnchor: 20, widthAnchor: 0)
            UIHelper.setTextLabel(label: pembelianBerupa, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 13, text: "Anda melakukan pembelian berupa :", kerning: 0.13)
            
            checkOutView.addSubview(daftarPembelianTable)
            daftarPembelianTable.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                daftarPembelianTable.leadingAnchor.constraint(equalTo: checkOutView.leadingAnchor, constant: 20),
                daftarPembelianTable.trailingAnchor.constraint(equalTo: checkOutView.trailingAnchor, constant: -20),
                daftarPembelianTable.topAnchor.constraint(equalTo: pembelianBerupa.bottomAnchor, constant: 15),
                daftarPembelianTable.heightAnchor.constraint(equalToConstant: height*0.7-35)
            ])
            daftarPembelianTable.separatorStyle = UITableViewCell.SeparatorStyle.none
            daftarPembelianTable.showsVerticalScrollIndicator = false
            daftarPembelianTable.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            daftarPembelianTable.layoutIfNeeded()
            
            checkOutView.addSubview(totalHargaLabel)
            UIHelper.makeLabel(label: totalHargaLabel, corner: 0, allignment: .right, leadingAnchor: checkOutView.leadingAnchor, trailingAnchor: checkOutView.trailingAnchor, topAnchor: daftarPembelianTable.bottomAnchor, leadingConstant: 30, trailingConstant: -47, topConstant: 5, heightAnchor: 20, widthAnchor: 0)
            UIHelper.setTextLabel(label: totalHargaLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 250.000,-", kerning: 0.12)
            
            checkOutView.addSubview(bayarButton)
            UIHelper.makeButton(button: bayarButton, leadingAnchor: checkOutView.leadingAnchor, trailingAnchor: checkOutView.trailingAnchor, topAnchor: totalHargaLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 0, corner: 24, heightAnchor: 48, widthAnchor: 0)
            bayarButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            bayarButton.setTitle("BAYAR", for: .normal)
            
            
        }
        
        func setupNavBarCheckOut(){
            let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
            self.navigationItem.leftBarButtonItem = customButtonNav
            navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            UINavigationBar.appearance().isTranslucent = false
         let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
                   UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "KERANJANG", kerning: 0)
                   navigationItem.titleView = titleLabel
            
        }
        
        @objc func backButtonTapped() {
            navigationController?.popViewController(animated: true)
        }
    }


    class checkOutCartTableCell : UITableViewCell {
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
            UIHelper.makeSmalllabel(smallLabel: namaProdukLabel, leadingAnchor: containerView.leadingAnchor, topAnchor: containerView.topAnchor, leadingConstant: 17, topConstant: 14, corner: 0, heightAnchor: 18, widthtAnchor: containerView.frame.size.width)
            UIHelper.setTextLabel(label: namaProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.12)
            namaProdukLabel.isUserInteractionEnabled = true
            containerView.addSubview(rightButton)
            rightButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                rightButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 13),
                rightButton.heightAnchor.constraint(equalToConstant: 11),
                rightButton.widthAnchor.constraint(equalToConstant: 6),
                rightButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -25)
            ])
            
            rightButton.setImage(UIImage(named: "next"), for: .normal)
            rightButton.contentMode = .center
            
            containerView.addSubview(underlineNamaProduk)
            UIHelper.makeView(view: underlineNamaProduk, leadingAnchor: containerView.leadingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: namaProdukLabel.bottomAnchor, leadingConstant: 22, trailingConstant: -22, topConstant: 6.5, corner: 0, heightAnchor: 0.5, widthAnchor: containerView.frame.size.width-44)
            underlineNamaProduk.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            
            containerView.addSubview(iconProdukImage)
            UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: containerView.leadingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 17, topConstant: 8.5, corner: 10, heightAnchor: 57)
            iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
            iconProdukImage.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)
            iconProdukImage.contentMode = .center
            
            containerView.addSubview(deskripsiProduklabel)
            UIHelper.makeLabel(label: deskripsiProduklabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: underlineNamaProduk.bottomAnchor, leadingConstant: 12, trailingConstant: -22, topConstant: 8.5, heightAnchor: 30, widthAnchor: 0)
            UIHelper.setTextLabel(label: deskripsiProduklabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: " ", kerning: 0.5)
            deskripsiProduklabel.numberOfLines = 0
            
            containerView.addSubview(hargaLabel)
            UIHelper.makeLabel(label: hargaLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerView.trailingAnchor, topAnchor: deskripsiProduklabel.bottomAnchor, leadingConstant: 12, trailingConstant: -22, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
            UIHelper.setTextLabel(label: hargaLabel, fontName: fontNameHelper.AvantGardeITCbyBTDemi, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 14, text: " ", kerning: 0.12)
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
    }
