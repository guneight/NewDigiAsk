//
//  ExtensionGaleryVC-.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import AVKit
extension GaleryViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("jumlah video : \(video.count)")
        return video.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellGalery", for: indexPath) as! galeryTableViewCell
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        let image = UIImage(named: video[indexPath.row].thumbUrl.path)
        cell.galeryImage.image = image
        cell.titleGaleryLabel.text = video[indexPath.row].title
        cell.tanggalGalery.text = video[indexPath.row].tanggalVideo
        cell.backgroundColor = .white
        cell.playButton.addTarget(self, action: #selector(playVideo), for: .touchUpInside)
        cell.shareGaleryButton.addTarget(self, action: #selector(shareGalery), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if view.frame.size.width > 414 {
            return view.frame.size.width
        }else{
            return 270
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let videos = video[indexPath.row]
        
        let videoURL = videos.url
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        
        present(playerViewController, animated: true) {
            player.play()
        }
    }
    
    
    
    func setupUIGalery(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(galeryView)
        galeryView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            galeryView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            galeryView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            galeryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            galeryView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        galeryView.backgroundColor = .white
        
        
        galeryView.addSubview(listGaleryTable)
        listGaleryTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            listGaleryTable.leadingAnchor.constraint(equalTo: galeryView.leadingAnchor, constant: 24),
            listGaleryTable.trailingAnchor.constraint(equalTo: galeryView.trailingAnchor, constant: -24),
            listGaleryTable.topAnchor.constraint(equalTo: galeryView.topAnchor, constant: 21),
            listGaleryTable.bottomAnchor.constraint(equalTo: galeryView.bottomAnchor)
        ])
        
        listGaleryTable.register(galeryTableViewCell.self, forCellReuseIdentifier: "cellGalery")
        listGaleryTable.separatorStyle = .none
        listGaleryTable.showsVerticalScrollIndicator = false
        listGaleryTable.backgroundColor = .white
    }
    
    @objc func shareGalery(){
        if let name = URL(string: "https://askrindo.co.id"), !name.absoluteString.isEmpty {
            let objectsToShare = [name]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            self.present(activityVC, animated: true, completion: nil)
        }else  {
            let alertNoHp = UIAlertController(title: "GAGAL", message: "Share file galery tidak dapat dilakukan!", preferredStyle: .alert)
            alertNoHp.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        }
    }
    
    @objc func playVideo(){
        let videos = video[0]
        let videoURL = videos.url
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        
        present(playerViewController, animated: true) {
            player.play()
        }
    }
    
    func setupNavBarGalery(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
          backItem.title = "HOME"
          let titleFont  = UIFont(name: fontNameHelper.NunitoBold, size: 14)
          backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
          navigationItem.leftBarButtonItems = [customButtonNav, backItem]
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}


class galeryTableViewCell : UITableViewCell{
    let galeryImage = UIImageView()
    let playButton  = UIButton()
    let titleGaleryLabel = UILabel()
    let timeGaleryIcon = UIImageView()
    let tanggalGalery = UILabel()
    let shareGaleryButton = UIButton()
    let underlineGalery = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(galeryImage)
        print("width cell = \(frame.size.width)")
        if UIScreen.main.bounds.width > 414 {
            UIHelper.makeImageView(imageView: galeryImage, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: UIScreen.main.bounds.width/3)
            galeryImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            galeryImage.contentMode = .scaleAspectFill
        }else{
        UIHelper.makeImageView(imageView: galeryImage, leadingAnchor: contentView.leadingAnchor, topAnchor: contentView.topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 200)
        galeryImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        galeryImage.contentMode = .scaleAspectFill
        }
        
        contentView.addSubview(playButton)
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.heightAnchor.constraint(equalToConstant: 39),
            playButton.widthAnchor.constraint(equalToConstant: 40),
            playButton.centerXAnchor.constraint(equalTo: galeryImage.centerXAnchor),
            playButton.centerYAnchor.constraint(equalTo: galeryImage.centerYAnchor)
        ])
        playButton.setImage(UIImage(named: "playIcon"), for: .normal)
        
        self.contentView.addSubview(titleGaleryLabel)
        UIHelper.makeLabel(label: titleGaleryLabel, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: galeryImage.bottomAnchor, leadingConstant: 0, trailingConstant: -40, topConstant: 10, heightAnchor: 45, widthAnchor: 0)
        UIHelper.setTextLabel(label: titleGaleryLabel, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 14, text: "Askrindo Kanwil V Denpansar dan VII Makassar Berikan Apresiasi kepada Agen Asuransi Berprestasi, Askrindo Kanwil V Denpansar dan VII Makassar Berikan Apresiasi kepada Agen Asuransi Berprestasi", kerning: 0.5)
        titleGaleryLabel.numberOfLines = 0
        
        
        self.contentView.addSubview(shareGaleryButton)
        UIHelper.makeSmallButton(smallButton: shareGaleryButton, leadingAnchor: contentView.trailingAnchor, topAnchor: galeryImage.bottomAnchor, leadingConstant: -30, topConstant: 15, corner: 0, heightAnchor: 19, widthtAnchor: 15, borderWidth: 0, colorBorder: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        shareGaleryButton.setImage(UIImage(named: "share"), for: .normal)
        
        self.contentView.addSubview(timeGaleryIcon)
        UIHelper.makeImageView(imageView: timeGaleryIcon, leadingAnchor: contentView.leadingAnchor, topAnchor: titleGaleryLabel.bottomAnchor, leadingConstant: 0, topConstant: 5, corner: 0, heightAnchor: 10)
        timeGaleryIcon.widthAnchor.constraint(equalToConstant: 10).isActive = true
        timeGaleryIcon.image = UIImage(named: "time")
        
        self.contentView.addSubview(tanggalGalery)
        UIHelper.makeLabel(label: tanggalGalery, corner: 0, allignment: .left, leadingAnchor: timeGaleryIcon.trailingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: titleGaleryLabel.bottomAnchor, leadingConstant: 5, trailingConstant: -30, topConstant: 5, heightAnchor: 8, widthAnchor: 0)
        UIHelper.setTextLabel(label: tanggalGalery, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.431372549, green: 0.431372549, blue: 0.431372549, alpha: 1), weight: .regular, fontSize: 8, text: "24 Oktober 2019", kerning: 0.4)
        
        self.contentView.addSubview(underlineGalery)
        UIHelper.makeLabel(label: underlineGalery, corner: 0, allignment: .left, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, topAnchor: timeGaleryIcon.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 15, heightAnchor: 5, widthAnchor: 0)
        underlineGalery.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
