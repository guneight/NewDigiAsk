//
//  ExtensionJenisProdukVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension JenisProdukViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellJenisProduk", for: indexPath) as! jenisProdukTableViewCell
        cell.selectionStyle = .none
        cell.backgroundColor = .white
        cell.layoutIfNeeded()
        cell.jenisProdukLabel.text = jenisProduk[indexPath.row]
        cell.startHargaProdukLabel.text = startHarga[indexPath.row]
        cell.deskripsiJenisProdukLabel.text = deskripsijenisProduk
        jenisProdukLabel.text = cell.jenisProdukLabel.text
        startHargaProdukLabel.text = cell.startHargaProdukLabel.text
        deskripsiJenisProdukLabel.text = cell.deskripsiJenisProdukLabel.text
        
        cell.rightButton.addTarget(self, action: #selector(jenisProdukDetail(sender:)), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(jenisProdukDetail(sender:)))
        cell.jenisProdukCellView.addGestureRecognizer(tapGesture)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    
    func setupUI(){
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
        produkImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        produkImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        produkImage.image = UIImage(named: "produkIconWhite")
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
        kerangjangImage.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        kerangjangImage.layer.borderColor = #colorLiteral(red: 0.6941176471, green: 0.6941176471, blue: 0.6941176471, alpha: 1)
        kerangjangImage.layer.masksToBounds = true
        kerangjangImage.layer.cornerRadius = 17
        kerangjangImage.image = UIImage(named: "keranjangIcon")
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
        
        produkBaseView.addSubview(jenisProdukView)
        UIHelper.makeView(view: jenisProdukView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: 0, widthAnchor: 0)
        jenisProdukView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        jenisProdukView.backgroundColor = .white
        
        jenisProdukTable.backgroundColor = .white
        jenisProdukTable.register(jenisProdukTableViewCell.self, forCellReuseIdentifier: "cellJenisProduk")
        jenisProdukTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        jenisProdukTable.showsVerticalScrollIndicator = false
        
        jenisProdukView.addSubview(namaProdukLabel)
        UIHelper.makeLabel(label: namaProdukLabel, corner: 0, allignment: .left, leadingAnchor: jenisProdukView.leadingAnchor, trailingAnchor: jenisProdukView.trailingAnchor, topAnchor: jenisProdukView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.12)
        
        jenisProdukView.addSubview(jenisProdukTable)
        jenisProdukTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            jenisProdukTable.leadingAnchor.constraint(equalTo: jenisProdukView.leadingAnchor, constant: 0),
            jenisProdukTable.trailingAnchor.constraint(equalTo: jenisProdukView.trailingAnchor, constant: 0),
            jenisProdukTable.topAnchor.constraint(equalTo: namaProdukLabel.bottomAnchor, constant: 20),
            jenisProdukTable.bottomAnchor.constraint(equalTo: jenisProdukView.bottomAnchor, constant: 0)
        ])
    }
    
    func setupNavBarJenisProdukDetail(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "PRODUK", style: .plain, target: nil, action: nil)
        
    }
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}


class jenisProdukTableViewCell: UITableViewCell {
    
    let iconJenisProdukImage = UIImageView()
    let jenisProdukCellView = UIView()
    let jenisProdukLabel = UILabel()
    let startHargaProdukLabel = UILabel()
    let lineHargaProduk = UIView()
    let deskripsiJenisProdukLabel = UILabel()
    let rightButton = UIButton()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(jenisProdukCellView)
        UIHelper.makeView(view: jenisProdukCellView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 30, corner: 10, heightAnchor: 140, widthAnchor: 0)
        jenisProdukCellView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        jenisProdukCellView.isUserInteractionEnabled = true
        
        self.contentView.addSubview(iconJenisProdukImage)
        UIHelper.makeImageView(imageView: iconJenisProdukImage, leadingAnchor: contentView.leadingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 25, topConstant: 10, corner: 10, heightAnchor: 69)
        iconJenisProdukImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconJenisProdukImage.image = UIImage(named: "idr-min")
        iconJenisProdukImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        iconJenisProdukImage.contentMode = .center
        
        jenisProdukCellView.addSubview(jenisProdukLabel)
        UIHelper.makeLabel(label: jenisProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconJenisProdukImage.trailingAnchor, trailingAnchor: jenisProdukCellView.trailingAnchor, topAnchor: jenisProdukCellView.topAnchor, leadingConstant: 18, trailingConstant: -40, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: jenisProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "", kerning: 0.12)
        jenisProdukLabel.numberOfLines = 0
        
        jenisProdukCellView.addSubview(startHargaProdukLabel)
        UIHelper.makeLabel(label: startHargaProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconJenisProdukImage.trailingAnchor, trailingAnchor: jenisProdukCellView.trailingAnchor, topAnchor: jenisProdukLabel.bottomAnchor, leadingConstant: 18, trailingConstant: -40, topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: startHargaProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "", kerning: 0.12)
        startHargaProdukLabel.numberOfLines = 0
        
        jenisProdukCellView.addSubview(rightButton)
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightButton.trailingAnchor.constraint(equalTo: jenisProdukCellView.trailingAnchor, constant: -10),
            rightButton.topAnchor.constraint(equalTo: jenisProdukCellView.topAnchor, constant: 18),
            rightButton.widthAnchor.constraint(equalToConstant: 10),
            rightButton.heightAnchor.constraint(equalToConstant: 16),
        ])
        rightButton.setImage(UIImage(named: "next"), for: .normal)
        rightButton.contentMode = .center
        rightButton.layoutIfNeeded()
        
        
        jenisProdukCellView.addSubview(lineHargaProduk)
        UIHelper.makeView(view: lineHargaProduk, leadingAnchor: iconJenisProdukImage.trailingAnchor, trailingAnchor: jenisProdukCellView.trailingAnchor, topAnchor: startHargaProdukLabel.bottomAnchor, leadingConstant: 6.5, trailingConstant: 0, topConstant: 7.5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        lineHargaProduk.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        jenisProdukCellView.addSubview(deskripsiJenisProdukLabel)
        deskripsiJenisProdukLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deskripsiJenisProdukLabel.leadingAnchor.constraint(equalTo: jenisProdukCellView.leadingAnchor, constant: 60),
            deskripsiJenisProdukLabel.trailingAnchor.constraint(equalTo: jenisProdukCellView.trailingAnchor, constant: -23),
            deskripsiJenisProdukLabel.topAnchor.constraint(equalTo: lineHargaProduk.bottomAnchor, constant: 18),
            deskripsiJenisProdukLabel.heightAnchor.constraint(equalToConstant: 50),
        ])
        UIHelper.setTextLabel(label: deskripsiJenisProdukLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "", kerning: 0.06)
        deskripsiJenisProdukLabel.numberOfLines = 0
        
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
