//
//  ExtensionJenisProdukDetailVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension JenisProdukDetailViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hargaDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellJenisProdukDetail", for: indexPath) as! JenisProdukDetailTableViewCell
        cell.selectionStyle = .none
        cell.nilaiPremiLabel.text = hargaDetail[indexPath.row]
        cell.jumlahHariLabel.text = jumlahHari[indexPath.row]
        cell.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        cell.layoutIfNeeded()
        
        
        //        cell.rightButton.addTarget(self, action: #selector(jenisProdukDetail(sender:)), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SyaratdanKetentuanVC = self.storyboard?.instantiateViewController(identifier: "SyaratdanKetentuanViewController") as! SyaratdanKetentuanViewController
        self.navigationController?.pushViewController(SyaratdanKetentuanVC, animated: true)
        
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
      
        daftarPremiTable.register(JenisProdukDetailTableViewCell.self, forCellReuseIdentifier: "cellJenisProdukDetail")
        daftarPremiTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        daftarPremiTable.showsVerticalScrollIndicator = false
        
        produkBaseView.addSubview(jenisProdukDetailView)
        UIHelper.makeView(view: jenisProdukDetailView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 60, corner: 20, heightAnchor: 0, widthAnchor: 0 )
        jenisProdukDetailView.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor).isActive = true
        jenisProdukDetailView.backgroundColor = .white
        
        jenisProdukDetailView.addSubview(JenisProdukContainerView)
        UIHelper.makeView(view: JenisProdukContainerView, leadingAnchor: jenisProdukDetailView.leadingAnchor, trailingAnchor: jenisProdukDetailView.trailingAnchor, topAnchor: jenisProdukDetailView.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 30, corner: 10, heightAnchor: view.frame.size.height, widthAnchor: 0)
        JenisProdukContainerView.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        
        jenisProdukDetailView.addSubview(iconJenisProdukDetailImage)
        UIHelper.makeImageView(imageView: iconJenisProdukDetailImage, leadingAnchor: jenisProdukDetailView.leadingAnchor, topAnchor: jenisProdukDetailView.topAnchor, leadingConstant: 36, topConstant: 14, corner: 10, heightAnchor: 69)
        iconJenisProdukDetailImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconJenisProdukDetailImage.image = UIImage(named: "idr-min")
        iconJenisProdukDetailImage.contentMode = . center
        iconJenisProdukDetailImage.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        JenisProdukContainerView.addSubview(namajenisProdukDetailLabel)
        UIHelper.makeLabel(label: namajenisProdukDetailLabel, corner: 0, allignment: .left, leadingAnchor: iconJenisProdukDetailImage.trailingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: JenisProdukContainerView.topAnchor, leadingConstant: 18, trailingConstant: -18, topConstant: 18, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: namajenisProdukDetailLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text:jenisProduk[0], kerning: 0.12)
        
        JenisProdukContainerView.addSubview(startHargaProdukDetailLabel)
        UIHelper.makeLabel(label: startHargaProdukDetailLabel, corner: 0, allignment: .left, leadingAnchor: iconJenisProdukDetailImage.trailingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: namajenisProdukDetailLabel.bottomAnchor , leadingConstant: 18, trailingConstant: -18, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: startHargaProdukDetailLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text:startHarga[0], kerning: 0.12)
        
        JenisProdukContainerView.addSubview(lineHargaProdukDetail)
        UIHelper.makeView(view: lineHargaProdukDetail, leadingAnchor: iconJenisProdukDetailImage.trailingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: startHargaProdukDetailLabel.bottomAnchor, leadingConstant: 6, trailingConstant: 0, topConstant: 7, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        lineHargaProdukDetail.backgroundColor = #colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1)
        
        
        
        JenisProdukContainerView.addSubview(deskripsiJenisProdukDetail)
        UIHelper.makeLabel(label: deskripsiJenisProdukDetail, corner: 0, allignment: .left, leadingAnchor: JenisProdukContainerView.leadingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: lineHargaProdukDetail.bottomAnchor , leadingConstant: 60, trailingConstant: 18, topConstant: 15, heightAnchor: 60, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiJenisProdukDetail, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: deskripsijenisProduk, kerning: 0.06)
        deskripsiJenisProdukDetail.numberOfLines = 0
        
        JenisProdukContainerView.addSubview(daftarPremiTable)
        daftarPremiTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            daftarPremiTable.leadingAnchor.constraint(equalTo: JenisProdukContainerView.leadingAnchor, constant: 10),
            daftarPremiTable.trailingAnchor.constraint(equalTo: JenisProdukContainerView.trailingAnchor, constant: -10),
            daftarPremiTable.topAnchor.constraint(equalTo: deskripsiJenisProdukDetail.bottomAnchor, constant: 10),
            daftarPremiTable.bottomAnchor.constraint(equalTo: JenisProdukContainerView.bottomAnchor)
        ])
        daftarPremiTable.layer.masksToBounds =  true
        daftarPremiTable.layer.cornerRadius = 10
        daftarPremiTable.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        
        
    }
    
    func setupNavBarJenisProdukDetail(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
         let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
               UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "PRODUK", kerning: 0)
               navigationItem.titleView = titleLabel
        
    }
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}

class JenisProdukDetailTableViewCell : UITableViewCell{
    let containerViewCell = UIView()
    let iconPremiImage = UIImageView()
    let nilaiPremiLabel = UILabel()
    let jumlahHariLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(containerViewCell)
        UIHelper.makeView(view: containerViewCell, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 10, heightAnchor:50, widthAnchor: 0)
        //            containerViewCell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        containerViewCell.backgroundColor = .white
        containerViewCell.layer.borderColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.09005779113)
        containerViewCell.layer.borderWidth = 1
        
        containerViewCell.addSubview(iconPremiImage)
        UIHelper.makeImageView(imageView: iconPremiImage, leadingAnchor: containerViewCell.leadingAnchor, topAnchor: containerViewCell.topAnchor, leadingConstant: 12, topConstant: 5, corner: 20, heightAnchor: 40)
        iconPremiImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
        iconPremiImage.backgroundColor = .gray
        
        containerViewCell.addSubview(nilaiPremiLabel)
        UIHelper.makeLabel(label: nilaiPremiLabel, corner: 0, allignment: .left, leadingAnchor: iconPremiImage.trailingAnchor, trailingAnchor: containerViewCell.trailingAnchor, topAnchor: containerViewCell.topAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nilaiPremiLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "", kerning: 0.12)
        
        containerViewCell.addSubview(jumlahHariLabel)
        UIHelper.makeLabel(label: jumlahHariLabel, corner: 0, allignment: .left, leadingAnchor: iconPremiImage.trailingAnchor, trailingAnchor: containerViewCell.trailingAnchor, topAnchor: nilaiPremiLabel.bottomAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 3, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: jumlahHariLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1), weight: .bold, fontSize: 10, text: "", kerning: 0.5)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
