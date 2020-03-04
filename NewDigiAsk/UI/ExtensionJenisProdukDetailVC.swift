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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellJenisProdukDetail", for: indexPath) as! JenisProdukDetailTableViewCell
        cell.selectionStyle = .none
        cell.backgroundColor = .yellow
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
        SyaratdanKetentuanVC.modalPresentationStyle = UIModalPresentationStyle.automatic
        SyaratdanKetentuanVC.transitioningDelegate = PresentationDelegate
        SyaratdanKetentuanVC.modalPresentationStyle = .custom
        present(SyaratdanKetentuanVC, animated: true, completion: {})
        
    }
    
    func setupUI(){
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
               gesture.direction = .down
//        daftarPremiTable.backgroundColor?.withAlphaComponent(0)
        daftarPremiTable.register(JenisProdukDetailTableViewCell.self, forCellReuseIdentifier: "cellJenisProdukDetail")
        daftarPremiTable.separatorStyle = UITableViewCell.SeparatorStyle.none
        daftarPremiTable.showsVerticalScrollIndicator = false

        view.addSubview(JenisProdukContainerView)
        UIHelper.makeView(view: JenisProdukContainerView, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, topAnchor: view.topAnchor, leadingConstant: 21, trailingConstant: -21, topConstant: 30, corner: 10, heightAnchor: view.frame.size.height, widthAnchor: 0)
        JenisProdukContainerView.backgroundColor = .white
        view.addSubview(iconJenisProdukDetailImage)
        UIHelper.makeImageView(imageView: iconJenisProdukDetailImage, leadingAnchor: view.leadingAnchor, topAnchor: view.topAnchor, leadingConstant: 36, topConstant: 14, corner: 10, heightAnchor: 69)
        iconJenisProdukDetailImage.widthAnchor.constraint(equalToConstant: 69).isActive = true
        iconJenisProdukDetailImage.backgroundColor = .black
        
        JenisProdukContainerView.addSubview(namajenisProdukDetailLabel)
        UIHelper.makeLabel(label: namajenisProdukDetailLabel, corner: 0, allignment: .left, leadingAnchor: iconJenisProdukDetailImage.trailingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: JenisProdukContainerView.topAnchor, leadingConstant: 18, trailingConstant: -18, topConstant: 18, heightAnchor: 16, widthAnchor: 0)
        namajenisProdukDetailLabel.backgroundColor = .red
        
        JenisProdukContainerView.addSubview(startHargaProdukDetailLabel)
        UIHelper.makeLabel(label: startHargaProdukDetailLabel, corner: 0, allignment: .left, leadingAnchor: iconJenisProdukDetailImage.trailingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: namajenisProdukDetailLabel.bottomAnchor , leadingConstant: 18, trailingConstant: -18, topConstant: 2, heightAnchor: 16, widthAnchor: 0)
        startHargaProdukDetailLabel.backgroundColor = .yellow
        
        JenisProdukContainerView.addSubview(lineHargaProdukDetail)
        UIHelper.makeView(view: lineHargaProdukDetail, leadingAnchor: iconJenisProdukDetailImage.trailingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: startHargaProdukDetailLabel.bottomAnchor, leadingConstant: 6, trailingConstant: 0, topConstant: 7, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        lineHargaProdukDetail.backgroundColor = #colorLiteral(red: 0.7254901961, green: 0.7254901961, blue: 0.7254901961, alpha: 1)
        
        
        
        JenisProdukContainerView.addSubview(deskripsiJenisProdukDetail)
        UIHelper.makeLabel(label: deskripsiJenisProdukDetail, corner: 0, allignment: .left, leadingAnchor: JenisProdukContainerView.leadingAnchor, trailingAnchor: JenisProdukContainerView.trailingAnchor, topAnchor: lineHargaProdukDetail.bottomAnchor , leadingConstant: 60, trailingConstant: 18, topConstant: 15, heightAnchor: 60, widthAnchor: 0)
        deskripsiJenisProdukDetail.backgroundColor = .red
        
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
        daftarPremiTable.backgroundColor = .blue
        
    
    }
    
    @objc func swipeDown() {
         self.dismiss(animated: true, completion: nil)
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
            containerViewCell.backgroundColor = .red
            
            containerViewCell.addSubview(iconPremiImage)
            UIHelper.makeImageView(imageView: iconPremiImage, leadingAnchor: containerViewCell.leadingAnchor, topAnchor: containerViewCell.topAnchor, leadingConstant: 12, topConstant: 5, corner: 20, heightAnchor: 40)
            iconPremiImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
            iconPremiImage.backgroundColor = .white

            containerViewCell.addSubview(nilaiPremiLabel)
            UIHelper.makeLabel(label: nilaiPremiLabel, corner: 0, allignment: .left, leadingAnchor: iconPremiImage.trailingAnchor, trailingAnchor: containerViewCell.trailingAnchor, topAnchor: containerViewCell.topAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 10, heightAnchor: 12, widthAnchor: 0)
            nilaiPremiLabel.backgroundColor = .white

            containerViewCell.addSubview(jumlahHariLabel)
            UIHelper.makeLabel(label: jumlahHariLabel, corner: 0, allignment: .left, leadingAnchor: iconPremiImage.trailingAnchor, trailingAnchor: containerViewCell.trailingAnchor, topAnchor: nilaiPremiLabel.bottomAnchor, leadingConstant: 13, trailingConstant: -13, topConstant: 3, heightAnchor: 12, widthAnchor: 0)
            jumlahHariLabel.backgroundColor = .white
        }
     
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
