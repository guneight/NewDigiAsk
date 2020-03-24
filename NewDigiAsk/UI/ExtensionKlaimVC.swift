//
//  ExtensionKlaimVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension KlaimViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jumlahPolidPending
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "polisakanKlaim", for: indexPath) as! PolisakanKlaimTableViewCell
        
        cell.backgroundColor = .white
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.iconProdukImage.image = UIImage(named:"\(namaProdukArray[indexPath.row])")
        cell.namaProdukLabel.text = "\(namaProdukArray[indexPath.row])"
        cell.klaimButton.addTarget(self, action: #selector(klaimButtonAction(sender:)), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    
    func setupUI(){
        let width = view.frame.size.width
//        let hegiht = view.frame.size.height
        view.backgroundColor = .white
        view.addSubview(polisSearchBar)
        polisSearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            polisSearchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 21),
            polisSearchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -21),
            polisSearchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            polisSearchBar.heightAnchor.constraint(equalToConstant: 35)
        ])
        polisSearchBar.placeholder = "Masukkan nama atau nomor polis"
        polisSearchBar.searchBarStyle = .default
        polisSearchBar.layer.borderWidth = 1
        polisSearchBar.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        polisSearchBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        polisSearchBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        UIHelper.setTextField(textField: polisSearchBar.searchTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "Tulis nama atau nomor polis", kerning: 1)
        view.addSubview(polisfilterView)
        UIHelper.makeView(view: polisfilterView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: polisSearchBar.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 10, corner: 0, heightAnchor: 40, widthAnchor: 0)
        polisfilterView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.1)
        
        polisfilterView.addSubview(polisfilterButton)
        UIHelper.makeSmallButton(smallButton: polisfilterButton, leadingAnchor: polisfilterView.leadingAnchor, topAnchor: polisfilterView.topAnchor, leadingConstant: width-80, topConstant: 15, corner: 0, heightAnchor: 16, widthtAnchor: 51, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        polisfilterButton.setImage(UIImage(named: "Filter Button"), for: .normal)
        
        view.addSubview(polisEmptyImage)
        polisEmptyImage.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                   polisEmptyImage.topAnchor.constraint(equalTo: polisfilterView.bottomAnchor, constant: 15),
                   polisEmptyImage.widthAnchor.constraint(equalToConstant: 204),
                   polisEmptyImage.heightAnchor.constraint(equalToConstant: 194),
                   polisEmptyImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
               ])
               polisEmptyImage.image = UIImage(named: "emptyImage")
               polisEmptyImage.contentMode = .center
               
               view.addSubview(polisEmptyLabel)
               UIHelper.makeLabel(label: polisEmptyLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: polisEmptyImage.bottomAnchor, leadingConstant: 50, trailingConstant: -50, topConstant: 0, heightAnchor: 40, widthAnchor: 0)
               polisEmptyLabel.numberOfLines = 2
               polisEmptyLabel.text = "TIDAK DITEMUKAN DATA KLAIM YANG DITOLAK"
               polisEmptyLabel.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        view.addSubview(polisPendingTableView)
        polisPendingTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            polisPendingTableView.topAnchor.constraint(equalTo: polisfilterView.bottomAnchor, constant: 10),
            polisPendingTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            polisPendingTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            polisPendingTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        polisPendingTableView.separatorStyle = .none
        polisPendingTableView.showsVerticalScrollIndicator = false
        polisPendingTableView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        polisPendingTableView.register(PolisakanKlaimTableViewCell.self, forCellReuseIdentifier: "polisakanKlaim")
        
       
        
        
    }
    
    
    func setupNavBarPolis(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "MONITORING KLAIM", style: .plain, target: nil, action: nil)
              
    }
    @objc func backButtonTapped() {
             navigationController?.popViewController(animated: true)
           }
}

class PolisakanKlaimTableViewCell : UITableViewCell{
    let HeadernomorTransaksiLabel = UILabel()
    let nomorTransaksiLabel = UILabel()
    let tanggalTransaksiLabel = UILabel()
    let klaimButton = UIButton()
    let lineTransaksiView = UILabel()
    let containerProdukView = UIView()
    let namaProdukLabel = UILabel()
    let rightDetailProdukButton = UIButton()
    let lineNamaProduk = UIView()
    let iconProdukImage = UIImageView()
    let deskripsiProdukLabel = UILabel()
    let hargaProdukLabel = UILabel()
    let grayLinePolis = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(HeadernomorTransaksiLabel)
        UIHelper.makeLabel(label: HeadernomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 21, trailingConstant: -(contentView.frame.size.width/2), topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        HeadernomorTransaksiLabel.text = "Nomor Transaksi"
        
        self.contentView.addSubview(tanggalTransaksiLabel)
        UIHelper.makeLabel(label: tanggalTransaksiLabel, corner: 0, allignment: .right, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: contentView.frame.size.width/2, trailingConstant: -21, topConstant: 14, heightAnchor: 11, widthAnchor: 0)
        tanggalTransaksiLabel.text = "12 Maret 2020"
        
        self.contentView.addSubview(klaimButton)
        klaimButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -21),
            klaimButton.topAnchor.constraint(equalTo: tanggalTransaksiLabel.bottomAnchor, constant: 5),
            klaimButton.widthAnchor.constraint(equalToConstant: 45),
            klaimButton.heightAnchor.constraint(equalToConstant: 15)
        ])
        klaimButton.setImage(UIImage(named: "Klaim Button"), for: .normal)
        
        self.contentView.addSubview(nomorTransaksiLabel)
        UIHelper.makeLabel(label: nomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: HeadernomorTransaksiLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 5, heightAnchor: 15, widthAnchor: 0)
        nomorTransaksiLabel.text = "123-2345-567-10879"
        
        self.contentView.addSubview(lineTransaksiView)
        UIHelper.makeView(view: lineTransaksiView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: nomorTransaksiLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineTransaksiView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.3)
        
        self.contentView.addSubview(containerProdukView)
        UIHelper.makeView(view: containerProdukView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: lineTransaksiView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 117, widthAnchor: 0)
        containerProdukView.layer.borderWidth = 1
        containerProdukView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        containerProdukView.addSubview(namaProdukLabel)
        UIHelper.makeLabel(label: namaProdukLabel, corner: 0, allignment: .left, leadingAnchor: containerProdukView.leadingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: containerProdukView.topAnchor, leadingConstant: 16, trailingConstant: -25, topConstant: 10, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaProdukLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.12)
        
        containerProdukView.addSubview(rightDetailProdukButton)
        rightDetailProdukButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rightDetailProdukButton.trailingAnchor.constraint(equalTo: containerProdukView.trailingAnchor, constant: -15),
            rightDetailProdukButton.topAnchor.constraint(equalTo: containerProdukView.topAnchor, constant: 10),
            rightDetailProdukButton.widthAnchor.constraint(equalToConstant: 6),
            rightDetailProdukButton.heightAnchor.constraint(equalToConstant: 11)
        ])
        rightDetailProdukButton.setImage(UIImage(named: "next"), for: .normal)
        
        containerProdukView.addSubview(lineNamaProduk)
        UIHelper.makeView(view: lineNamaProduk, leadingAnchor: containerProdukView.leadingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: namaProdukLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5.5, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineNamaProduk.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.18)
        
        containerProdukView.addSubview(iconProdukImage)
        UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: containerProdukView.leadingAnchor, topAnchor: lineNamaProduk.bottomAnchor, leadingConstant: 16, topConstant: 12, corner: 10, heightAnchor: 57)
        iconProdukImage.widthAnchor.constraint(equalToConstant: 57).isActive = true
        iconProdukImage.backgroundColor = #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)
        iconProdukImage.contentMode = .center
        
        containerProdukView.addSubview(deskripsiProdukLabel)
        UIHelper.makeLabel(label: deskripsiProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: lineNamaProduk.bottomAnchor, leadingConstant: 12, trailingConstant: -20, topConstant: 5, heightAnchor: 40, widthAnchor: 0)
        deskripsiProdukLabel.numberOfLines = 0
        UIHelper.setTextLabel(label: deskripsiProdukLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 0.65), weight: .regular, fontSize: 10, text: "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam", kerning: 0.5)
                
        containerProdukView.addSubview(hargaProdukLabel)
        UIHelper.makeLabel(label: hargaProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: deskripsiProdukLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -20, topConstant: 5, heightAnchor: 17, widthAnchor:   0)
         UIHelper.setTextLabel(label: hargaProdukLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 12, text: "Rp 250.000,-", kerning: 0.5)
        
        self.contentView.addSubview(grayLinePolis)
        UIHelper.makeView(view: grayLinePolis, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: containerProdukView.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 17, corner: 0, heightAnchor: 7, widthAnchor: 0)
        grayLinePolis.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
