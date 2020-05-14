//
//  ExtensionProduk.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
var PresentationDelegate = PresentationManager()
var indexProduk :Int = 0
extension ProdukViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        return 13
    //    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellProduk", for: indexPath) as! produkTableViewCell
        cell.iconProdukImage.image = UIImage(named: "\(namaProdukArray[indexPath.row])")
        cell.produkLabel.text = "\(namaProdukArray[indexPath.row])"
        cell.selectionStyle = .none
        cell.backgroundColor = .white
        cell.layoutIfNeeded()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let produkDetailVC = self.storyboard?.instantiateViewController(identifier: "ProdukDetailViewController") as! ProdukDetailViewController
        produkDetailVC.indexProdukSelect = indexPath.row
        self.navigationController?.pushViewController(produkDetailVC, animated: true)
        print(" IndexPath = \(indexPath.row)")
        
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
        produkBaseView.backgroundColor = #colorLiteral(red: 0.6549019608, green: 0.6980392157, blue: 0.8980392157, alpha: 0.7213452483)
        produkBaseView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.2017337329)
        produkBaseView.layoutIfNeeded()
        
        produkBaseView.addSubview(lineView)
        UIHelper.makeView(view: lineView, leadingAnchor: produkBaseView.leadingAnchor, trailingAnchor: produkBaseView.trailingAnchor, topAnchor: produkBaseView.topAnchor, leadingConstant: (view.frame.size.width-290)/2 , trailingConstant: -((view.frame.size.width-290)/2), topConstant: 32, corner: 0, heightAnchor: 1.5, widthAnchor: 0)
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
        
        
        produkBaseView.addSubview(viewContainerTableProduk)
        viewContainerTableProduk.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewContainerTableProduk.leadingAnchor.constraint(equalTo: produkBaseView.leadingAnchor),
            viewContainerTableProduk.trailingAnchor.constraint(equalTo: produkBaseView.trailingAnchor),
            viewContainerTableProduk.topAnchor.constraint(equalTo: prosesStackView.bottomAnchor, constant: 10),
            viewContainerTableProduk.bottomAnchor.constraint(equalTo: produkBaseView.bottomAnchor, constant: 0)
        ])
        viewContainerTableProduk.backgroundColor = .white
        viewContainerTableProduk.layer.cornerRadius = 20
        viewContainerTableProduk.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        viewContainerTableProduk.layoutIfNeeded()
        
        viewContainerTableProduk.addSubview(produkTable)
        produkTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            produkTable.leadingAnchor.constraint(equalTo: viewContainerTableProduk.leadingAnchor, constant: 22),
            produkTable.trailingAnchor.constraint(equalTo: viewContainerTableProduk.trailingAnchor, constant: -22),
            produkTable.topAnchor.constraint(equalTo: viewContainerTableProduk.topAnchor, constant: 10),
            produkTable.bottomAnchor.constraint(equalTo: viewContainerTableProduk.bottomAnchor, constant: 0)
        ])
        
        produkTable.backgroundColor = .white
        produkTable.register(produkTableViewCell.self, forCellReuseIdentifier: "cellProduk")
        produkTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        produkTable.showsVerticalScrollIndicator = false
        
        
    }
    
    func setupNavBar(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
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
        navigationController?.popViewController(animated: true)
    }
    
}

class produkTableViewCell: UITableViewCell {
    let viewContent = UIView()
    let iconProdukImage = UIImageView()
    let produkLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(viewContent)
        self.viewContent.addSubview(iconProdukImage)
        self.viewContent.addSubview(produkLabel)
        UIHelper.makeView(view: viewContent, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 53, widthAnchor: 0)
        viewContent.backgroundColor = .white
        viewContent.layer.masksToBounds = true
        viewContent.layer.cornerRadius = 10
        viewContent.layer.borderColor = #colorLiteral(red: 0.8705882353, green: 0.8666666667, blue: 0.8666666667, alpha: 1)
        viewContent.layer.borderWidth = 1
        viewContent.layer.shadowColor = UIColor.black.cgColor
        viewContent.layer.shadowPath = UIBezierPath(rect: viewContent.bounds).cgPath
        viewContent.layer.shadowOffset = .zero
        viewContent.layer.shadowRadius = 10
        viewContent.layer.shadowOpacity = 1
        viewContent.layer.shouldRasterize = true
        
        iconProdukImage.backgroundColor = .white
        UIHelper.makeImageView(imageView: iconProdukImage, leadingAnchor: viewContent.leadingAnchor, topAnchor: viewContent.topAnchor, leadingConstant: 28, topConstant: 13, corner: 0, heightAnchor: 27)
        iconProdukImage.widthAnchor.constraint(equalToConstant: 27).isActive = true
        iconProdukImage.contentMode = .scaleAspectFit
        
        
        UIHelper.makeLabel(label: produkLabel, corner: 0, allignment: .left, leadingAnchor: iconProdukImage.trailingAnchor, trailingAnchor: viewContent.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 18, trailingConstant: -5, topConstant: 23, heightAnchor: 16, widthAnchor: 0)
        produkLabel.backgroundColor = .white
        UIHelper.setTextLabel(label: produkLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .semibold, fontSize: 13, text: "", kerning: 0.13)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

