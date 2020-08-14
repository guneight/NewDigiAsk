//
//  ExtensionNotifikasiVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 31/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
extension NotifikasiViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleNotifArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "notifikasiCell", for: indexPath) as! notifikasiListTableViewCell
        cell.backgroundColor = .white
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.headerNotifikaiLabel.text = titleNotifArray[indexPath.row]
        cell.deskripsiNotifikasilabel.text = bodyNotifArry[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
  
            return view.frame.size.width/2.5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailNotifikasiVC = storyboard?.instantiateViewController(identifier: "DetailNotifikasiViewController") as! DetailNotifikasiViewController
        navigationController?.pushViewController(detailNotifikasiVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrayTemp[0] = titleNotifArray[indexPath.row]
            indexDelete = indexPath.row
            titleNotifArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            baseViewUndoDelete.isHidden = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                UIView.transition(with: self.baseViewUndoDelete, duration: 0.4,
                    options: .transitionCrossDissolve,
                    animations: {
                        self.baseViewUndoDelete.isHidden = true
                })
            }
        }
    }
    
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(notifikasiBaseView)
        UIHelper.makeView(view: notifikasiBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        
        notifikasiBaseView.addSubview(notifikasiListTable)
        notifikasiListTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            notifikasiListTable.leadingAnchor.constraint(equalTo: notifikasiBaseView.leadingAnchor),
            notifikasiListTable.trailingAnchor.constraint(equalTo: notifikasiBaseView.trailingAnchor),
            notifikasiListTable.topAnchor.constraint(equalTo: notifikasiBaseView.topAnchor),
            notifikasiListTable.bottomAnchor.constraint(equalTo: notifikasiBaseView.bottomAnchor)
        ])
        notifikasiListTable.backgroundColor = .white
        notifikasiListTable.showsVerticalScrollIndicator = false
        notifikasiListTable.separatorStyle = .none
        notifikasiListTable.register(notifikasiListTableViewCell.self, forCellReuseIdentifier: "notifikasiCell")
        
        baseViewUndoDelete.isHidden = true
        
        notifikasiBaseView.addSubview(baseViewUndoDelete)
        UIHelper.makeView(view: baseViewUndoDelete, leadingAnchor: notifikasiBaseView.leadingAnchor, trailingAnchor: notifikasiBaseView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: -40, corner: 5, heightAnchor: 45, widthAnchor: 0)
        baseViewUndoDelete.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        baseViewUndoDelete.addSubview(notifHaveDeleteLabel)
        UIHelper.makeLabel(label: notifHaveDeleteLabel, corner: 0, allignment: .left, leadingAnchor: baseViewUndoDelete.leadingAnchor, trailingAnchor: baseViewUndoDelete.trailingAnchor, topAnchor: baseViewUndoDelete.topAnchor, leadingConstant: 10, trailingConstant: baseViewUndoDelete.frame.size.width/2, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: notifHaveDeleteLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .regular, fontSize: 12, text: "Notifikasi telah dihapus", kerning: 0.5)
        
        baseViewUndoDelete.addSubview(undoLabel)
        UIHelper.makeLabel(label: undoLabel, corner: 0, allignment: .left, leadingAnchor: baseViewUndoDelete.leadingAnchor, trailingAnchor: baseViewUndoDelete.trailingAnchor, topAnchor: baseViewUndoDelete.topAnchor, leadingConstant: baseViewUndoDelete.frame.size.width/2+20, trailingConstant: 50, topConstant: 15, heightAnchor: 16, widthAnchor: 0)
        UIHelper.setTextLabel(label: undoLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.2458193898, green: 0.2900034189, blue: 0.4485326409, alpha: 1), weight: .regular, fontSize: 12, text: "Undo", kerning: 0.5)
        undoLabel.isUserInteractionEnabled = true
        
        baseViewUndoDelete.addSubview(closeButton)
        UIHelper.makeSmallButton(smallButton: closeButton, leadingAnchor: baseViewUndoDelete.trailingAnchor, topAnchor: baseViewUndoDelete.topAnchor, leadingConstant: -20, topConstant: 15, corner: 0, heightAnchor: 15, widthtAnchor: 15, borderWidth: 0, colorBorder: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        closeButton.setTitle("x", for: .normal)
        closeButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }
    
    func setupNavBarNotifikasi(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        let deleteButtonNav = UIBarButtonItem(image: UIImage(named: "whiteTrushIcon"), style: .plain, target: self, action: #selector(trushAction))
        self.navigationItem.leftBarButtonItem = customButtonNav
        self.navigationItem.rightBarButtonItem = deleteButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
                      UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .bold, fontSize: 12, text: "HOME", kerning: 0)
                      navigationItem.titleView = titleLabel
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
    
    @objc func trushAction(sender :UIButton){
        let alertNoHp = UIAlertController(title: "Hapus Notifikasi", message: "Apakah Anda yakin untuk menghapus seluruh notifikasi?", preferredStyle: .alert)
        alertNoHp.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertNoHp.addAction(UIAlertAction(title: "Hapus", style: .destructive, handler: {(action)-> Void in
            self.titleNotifArray.removeAll()
            self.bodyNotifArry.removeAll()
            self.notifikasiListTable.reloadData()
            
        }))
        self.present(alertNoHp, animated: true)
        
        
    }
    
    @objc func undoAction(){
        titleNotifArray[indexDelete] = arrayTemp[0]
        notifikasiListTable.reloadData()
        baseViewUndoDelete.isHidden = true
    }
    
    @objc func closeAction(){
        baseViewUndoDelete.isHidden = true
    }
    
}

class notifikasiListTableViewCell: UITableViewCell{
    let timeIconImage = UIImageView()
    let tanggalNotifikasilabel = UILabel()
    let notifikasiImage = UIImageView()
    let headerNotifikaiLabel = UILabel()
    let deskripsiNotifikasilabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(notifikasiImage)
        notifikasiImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            notifikasiImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            notifikasiImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            notifikasiImage.topAnchor.constraint(equalTo: topAnchor),
            notifikasiImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -72)
        
        ])
        
        notifikasiImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24).isActive = true
        notifikasiImage.contentMode = .scaleAspectFit
        notifikasiImage.backgroundColor = .gray
        
        contentView.addSubview(timeIconImage)
        UIHelper.makeImageView(imageView: timeIconImage, leadingAnchor: contentView.leadingAnchor, topAnchor: notifikasiImage.bottomAnchor, leadingConstant: 24, topConstant: 5, corner: 0, heightAnchor: 10)
        timeIconImage.heightAnchor.constraint(equalToConstant: 10).isActive = true
        timeIconImage.image = UIImage(named: "time")
        
        contentView.addSubview(tanggalNotifikasilabel)
        UIHelper.makeLabel(label: tanggalNotifikasilabel, corner: 0, allignment: .left, leadingAnchor: timeIconImage.trailingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: notifikasiImage.bottomAnchor, leadingConstant: 10, trailingConstant: -24, topConstant: 5, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalNotifikasilabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.431372549, green: 0.431372549, blue: 0.431372549, alpha: 1), weight: .regular, fontSize: 8, text: "", kerning: 0.4)
        
        contentView.addSubview(headerNotifikaiLabel)
        UIHelper.makeLabel(label: headerNotifikaiLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: tanggalNotifikasilabel.bottomAnchor, leadingConstant: 24, trailingConstant: -30, topConstant: 5, heightAnchor: 14, widthAnchor: 0)
        
        UIHelper.setTextLabel(label: headerNotifikaiLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), weight: .bold, fontSize: 13, text: "", kerning: 0.13)
        headerNotifikaiLabel.backgroundColor = .white
        
        contentView.addSubview(deskripsiNotifikasilabel)
        UIHelper.makeLabel(label: deskripsiNotifikasilabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: headerNotifikaiLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -30, topConstant: 0, heightAnchor: 36, widthAnchor: 0)
        UIHelper.setTextLabel(label: deskripsiNotifikasilabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 13, text: "", kerning: 0.13)
        deskripsiNotifikasilabel.backgroundColor = .white
        deskripsiNotifikasilabel.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
}
