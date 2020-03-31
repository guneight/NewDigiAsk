//
//  ExtensionListPenerimaManfaatVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 24/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension ListTertanggungViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListPenerimaManfaatCell", for: indexPath) as! ListPenerimaManfaatTableViewCell
        cell.kategoriAsuransi.text = "kecelakaan"
        cell.deskripsiKAtegori.text = "daftar nama tertanggung"
        cell.rightButton.setImage(UIImage(named: "next"), for: .normal)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 55
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if namaProdukArray[indexPath.row] == "Kecelakaan Diri"{
            let daftarTertanggungVC = storyboard?.instantiateViewController(identifier: "DaftarTertanggungViewController") as! DaftarTertanggungViewController
            navigationController?.pushViewController(daftarTertanggungVC, animated: true)
        }
    }
    
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let height = view.frame.size.height
        view.addSubview(listPenerimaManfaatBaseView)
        UIHelper.makeView(view: listPenerimaManfaatBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: height, widthAnchor: 0)
        
        listPenerimaManfaatBaseView.addSubview(listPenerimaManfaatTableVIew)
        listPenerimaManfaatTableVIew.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            listPenerimaManfaatTableVIew.leadingAnchor.constraint(equalTo: listPenerimaManfaatBaseView.leadingAnchor),
            listPenerimaManfaatTableVIew.trailingAnchor.constraint(equalTo: listPenerimaManfaatBaseView.trailingAnchor),
            listPenerimaManfaatTableVIew.topAnchor.constraint(equalTo: listPenerimaManfaatBaseView.topAnchor),
            listPenerimaManfaatTableVIew.bottomAnchor.constraint(equalTo: listPenerimaManfaatBaseView.bottomAnchor)
        ])
        listPenerimaManfaatTableVIew.backgroundColor = .white
        listPenerimaManfaatTableVIew.register(ListPenerimaManfaatTableViewCell.self, forCellReuseIdentifier: "ListPenerimaManfaatCell")
        listPenerimaManfaatTableVIew.separatorStyle = UITableViewCell.SeparatorStyle.none
        listPenerimaManfaatTableVIew.showsVerticalScrollIndicator = false
             
    }
    
    func setupNavBarListPenerimaManfaat(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "PENERIMA MANFAAT", style: .plain, target: nil, action: nil)
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
    
}


class ListPenerimaManfaatTableViewCell: UITableViewCell{
    let kategoriAsuransi = UILabel()
    let deskripsiKAtegori = UILabel()
    let rightButton = UIButton()
    let underlineCell = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .white
        contentView.addSubview(kategoriAsuransi)
        UIHelper.makeLabel(label: kategoriAsuransi, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 10, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: kategoriAsuransi, fontName: "Arial", fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.4)
        
        contentView.addSubview(deskripsiKAtegori)
        UIHelper.makeLabel(label: deskripsiKAtegori, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: kategoriAsuransi.bottomAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 0, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiKAtegori, fontName: "Arial", fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 12, text: " ", kerning: 0.4)
        
        contentView.addSubview(rightButton)
        UIHelper.makeSmallButton(smallButton: rightButton, leadingAnchor: contentView.trailingAnchor, topAnchor: contentView.topAnchor, leadingConstant: -30, topConstant: 15, corner: 0, heightAnchor: 10, widthtAnchor: 6, borderWidth: 0, colorBorder: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        rightButton.setImage(UIImage(named: "next"), for: .normal)
        
        contentView.addSubview(underlineCell)
        UIHelper.makeView(view: underlineCell, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: deskripsiKAtegori.bottomAnchor, leadingConstant: 20, trailingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 0.5, widthAnchor: 0)
        underlineCell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
