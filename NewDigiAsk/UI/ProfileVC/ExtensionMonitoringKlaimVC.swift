//
//  ExtensionMonitoringKlaimVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 06/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension MonitoringKlaimViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jumlahKlaimPending
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "monitoringKlaimCell", for: indexPath) as! MonitoringKlaimTableViewCell
        cell.klaimButton.isHidden = true
        cell.contentView.addSubview(headerNomorKlaim)
        UIHelper.makeLabel(label: headerNomorKlaim, corner: 0, allignment: .left, leadingAnchor: cell.leadingAnchor, trailingAnchor: cell.trailingAnchor, topAnchor: cell.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNomorKlaim, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Klaim", kerning: 0.12)
        if segmentedIndex == 0{
            cell.namaProdukLabel.text = "Asuransi Perdagangan"
            cell.iconProdukImage.image = UIImage(named: "\(namaProdukArray[indexPath.row])")
        }else if segmentedIndex == 1 {
            cell.namaProdukLabel.text = "Asuransi Kecelakaan"
        }else if segmentedIndex == 2{
            cell.namaProdukLabel.text = "Asuransi Jalan-Jalan"
        }else{
            cell.namaProdukLabel.text = "Asuransi ngacap"
        }
        cell.backgroundColor = .white
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.rightDetailProdukButton.addTarget(self, action: #selector(rightButtonAction(sender:)), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(namaAsuransiAction(sender:)))
        cell.namaProdukLabel.addGestureRecognizer(tapGesture)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 265
    }
    
    
    func setupUI(){
        let width = view.frame.size.width
        view.backgroundColor = .white
        view.addSubview(klaimManageSegmentControl)
        klaimManageSegmentControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimManageSegmentControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            klaimManageSegmentControl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            klaimManageSegmentControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            klaimManageSegmentControl.heightAnchor.constraint(equalToConstant: 40)
        ])
        klaimManageSegmentControl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)
        klaimManageSegmentControl.selectedSegmentTintColor = .white
        klaimManageSegmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
                
        view.addSubview(klaimSearchBar)
        klaimSearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimSearchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 21),
            klaimSearchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -21),
            klaimSearchBar.topAnchor.constraint(equalTo: klaimManageSegmentControl.bottomAnchor, constant: 12),
            klaimSearchBar.heightAnchor.constraint(equalToConstant: 35)
        ])
        klaimSearchBar.searchBarStyle = .default
        klaimSearchBar.layer.borderWidth = 1
        klaimSearchBar.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        klaimSearchBar.barTintColor = .white
        klaimSearchBar.backgroundColor = .white
        UIHelper.setTextField(textField: klaimSearchBar.searchTextField, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), weight: .bold, fontSize: 10, text: "Tulis nama atau nomor polis", kerning: 0.5)
        
        view.addSubview(klaimfilterView)
        UIHelper.makeView(view: klaimfilterView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: klaimSearchBar.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 10, corner: 0, heightAnchor: 40, widthAnchor: 0)
        klaimfilterView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.1)
        
        klaimfilterView.addSubview(klaimfilterButton)
        UIHelper.makeSmallButton(smallButton: klaimfilterButton, leadingAnchor: klaimfilterView.leadingAnchor, topAnchor: klaimfilterView.topAnchor, leadingConstant: width-80, topConstant: 15, corner: 0, heightAnchor: 16, widthtAnchor: 51, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        klaimfilterButton.setImage(UIImage(named: "Filter Button"), for: .normal)
        
        view.addSubview(klaimEmptyImage)
        klaimEmptyImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimEmptyImage.topAnchor.constraint(equalTo: klaimfilterView.bottomAnchor, constant: 15),
            klaimEmptyImage.widthAnchor.constraint(equalToConstant: 204),
            klaimEmptyImage.heightAnchor.constraint(equalToConstant: 194),
            klaimEmptyImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
        klaimEmptyImage.image = UIImage(named: "emptyImage")
        klaimEmptyImage.contentMode = .center
        
        view.addSubview(klaimEmptyLabel)
        UIHelper.makeLabel(label: klaimEmptyLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: klaimEmptyImage.bottomAnchor, leadingConstant: 50, trailingConstant: -50, topConstant: 0, heightAnchor: 40, widthAnchor: 0)
        klaimEmptyLabel.numberOfLines = 2
        klaimEmptyLabel.text = "TIDAK DITEMUKAN DATA KLAIM YANG DITOLAK"
        klaimEmptyLabel.font = UIFont(name: "AvantGarde Bk BT", size: 12)
        view.addSubview(klaimPendingTableView)
        klaimPendingTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimPendingTableView.topAnchor.constraint(equalTo: klaimfilterView.bottomAnchor, constant: 10),
            klaimPendingTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            klaimPendingTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            klaimPendingTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        klaimPendingTableView.separatorStyle = .none
        klaimPendingTableView.showsVerticalScrollIndicator = false
        klaimPendingTableView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        klaimPendingTableView.register(MonitoringKlaimTableViewCell.self, forCellReuseIdentifier: "monitoringKlaimCell")
        klaimManageSegmentControl.selectedSegmentIndex = 0
    }
    func setupNavBarKlaim(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
       let backItem = UIBarButtonItem()
          backItem.title = "HOME"
          let titleFont  = UIFont(name: "Arial-BoldMT", size: 14)
          backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
          navigationItem.leftBarButtonItems = [customButtonNav, backItem]
        
        
    }
    @objc func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}



class MonitoringKlaimTableViewCell : UITableViewCell{
    let headerNomorKlaim = UILabel()
    let nomorNomorKlaim = UILabel()
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
        
        self.contentView.addSubview(headerNomorKlaim)
        UIHelper.makeLabel(label: headerNomorKlaim, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 21, trailingConstant: -(contentView.frame.size.width/2), topConstant: 12, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: headerNomorKlaim, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Klaim", kerning: 0.12)
        
        self.contentView.addSubview(nomorNomorKlaim)
        UIHelper.makeLabel(label: nomorNomorKlaim, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: headerNomorKlaim.bottomAnchor, leadingConstant: 24, trailingConstant: -(contentView.frame.size.width/2), topConstant: 5, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorNomorKlaim, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.12)
        
        
        self.contentView.addSubview(tanggalTransaksiLabel)
        UIHelper.makeLabel(label: tanggalTransaksiLabel, corner: 0, allignment: .right, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: contentView.frame.size.width/2, trailingConstant: -21, topConstant: 14, heightAnchor: 11, widthAnchor: 0)
         UIHelper.setTextLabel(label: tanggalTransaksiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 9, text: "12 Desember 2019", kerning: 0.45)
        
        self.contentView.addSubview(HeadernomorTransaksiLabel)
        UIHelper.makeLabel(label: HeadernomorTransaksiLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: nomorNomorKlaim.bottomAnchor, leadingConstant: 21, trailingConstant: -(contentView.frame.size.width/2), topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: HeadernomorTransaksiLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Nomor Transaksi", kerning: 0.12)
        
        self.contentView.addSubview(tanggalTransaksiLabel)
        UIHelper.makeLabel(label: tanggalTransaksiLabel, corner: 0, allignment: .right, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: contentView.frame.size.width/2, trailingConstant: -21, topConstant: 14, heightAnchor: 11, widthAnchor: 0)
         UIHelper.setTextLabel(label: tanggalTransaksiLabel, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 9, text: "12 Desember 2019", kerning: 0.45)
        
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
        UIHelper.setTextLabel(label: nomorTransaksiLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "123-2345-567-10879", kerning: 0.12)
               
        self.contentView.addSubview(lineTransaksiView)
        UIHelper.makeView(view: lineTransaksiView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: nomorTransaksiLabel.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 10, corner: 0, heightAnchor: 1, widthAnchor: 0)
        lineTransaksiView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.3)
        
        self.contentView.addSubview(containerProdukView)
        UIHelper.makeView(view: containerProdukView, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: lineTransaksiView.bottomAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 10, corner: 10, heightAnchor: 117, widthAnchor: 0)
        containerProdukView.layer.borderWidth = 1
        containerProdukView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        containerProdukView.addSubview(namaProdukLabel)
        UIHelper.makeLabel(label: namaProdukLabel, corner: 0, allignment: .left, leadingAnchor: containerProdukView.leadingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: containerProdukView.topAnchor, leadingConstant: 16, trailingConstant: -25, topConstant: 10, heightAnchor: 17, widthAnchor: 0)
        UIHelper.setTextLabel(label: namaProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 12, text: "Asuransi Kecelakaan Diri", kerning: 0.12)
        namaProdukLabel.isUserInteractionEnabled = true
        
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
        UIHelper.makeLabel(label: deskripsiProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: lineNamaProduk.bottomAnchor, leadingConstant: 12, trailingConstant: -20, topConstant: 12, heightAnchor: 35, widthAnchor: 0)
        deskripsiProdukLabel.numberOfLines = 0
        UIHelper.setTextLabel(label: deskripsiProdukLabel, fontName: "Helvetica", fontColor: #colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 0.65), weight: .bold, fontSize: 12, text: "Manfaat akan diberikan dalam hal Tertanggung meninggal dunia dalam", kerning: 0.06)
        
        containerProdukView.addSubview(hargaProdukLabel)
        UIHelper.makeLabel(label: hargaProdukLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: containerProdukView.trailingAnchor, topAnchor: deskripsiProdukLabel.bottomAnchor, leadingConstant: 12, trailingConstant: -20, topConstant: 5, heightAnchor: 17, widthAnchor:   0)
        UIHelper.setTextLabel(label: hargaProdukLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 12, text: "Rp 250.000,-", kerning: 0.12)
        
        self.contentView.addSubview(grayLinePolis)
        UIHelper.makeView(view: grayLinePolis, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: containerProdukView.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 17, corner: 0, heightAnchor: 7, widthAnchor: 0)
        grayLinePolis.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
