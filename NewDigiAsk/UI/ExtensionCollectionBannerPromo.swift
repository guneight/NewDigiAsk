//
//  ExtensionCollectionBannerPromo.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

let containerCollectionView : UIView = {
    let cv = UIView()
    cv.translatesAutoresizingMaskIntoConstraints = false
    return cv
}()
let collectionViewPromo : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    let cvPromo = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cvPromo.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellpromo")
    cvPromo.backgroundColor = UIColor.clear
    return cvPromo
}()

let collectionViewProduct : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
     layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    let cvListProduct = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cvListProduct.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellproduct")
  
    return cvListProduct
}()

let whiteView : UIView = {
    let wv = UIView()
    wv.layer.masksToBounds = false
    wv.layer.cornerRadius = 20
    wv.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
    wv.backgroundColor = .white
    wv.translatesAutoresizingMaskIntoConstraints = false
    return wv
}()


let stackViewIndicator: UIStackView = {
    let stackViewCV = UIStackView()
    stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
    stackViewCV.distribution = UIStackView.Distribution.fillEqually
    stackViewCV.alignment = UIStackView.Alignment.center
    stackViewCV.backgroundColor = #colorLiteral(red: 0.2131774127, green: 0.6528760791, blue: 1, alpha: 1)
    stackViewCV.translatesAutoresizingMaskIntoConstraints = false
    stackViewCV.spacing = 5
    return stackViewCV
    }()


    let collectBannerPromo : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
        let cvBannerPromo = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cvBannerPromo.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellBannerPromo")
        return cvBannerPromo
    
    }()


    let collectionViewInfo  : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
        let cvInfo = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cvInfo.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellInfo")
        return cvInfo

    }()

    let collectionViewGalery  : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
        let cvGalery = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cvGalery.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellGalery")
        return cvGalery
    }()
    let viewColletionProduct = UIView()
    let viewPromo = UIView()
    let labelPromo = UILabel()
    let viewInfo = UIView()
    let labelInfo = UILabel()
    let viewGalery = UIView()
    let labelGalery = UILabel()
    let viewMap = UIView()
    let labelMap = UILabel()
    let imageViewMap = UIImageView()
    
    let indicatorbanner1 = UILabel()
    let indicatorbanner2 = UILabel()
    let indicatorbanner3 = UILabel()
    let indicatorbanner4 = UILabel()
    let indicatorbanner5 = UILabel()
    let arrayIndicator = [indicatorbanner1, indicatorbanner2,indicatorbanner3, indicatorbanner4, indicatorbanner5]
  

extension HomeMenuViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func setupStatusBar(){
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
    }
    func cvSetup(){
        
        baseView.addSubview(whiteView)
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: baseView.topAnchor, constant: 130),
            whiteView.bottomAnchor.constraint(equalTo: baseView.bottomAnchor),
            whiteView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
            whiteView.trailingAnchor.constraint(equalTo: baseView.trailingAnchor)
            ])
        
        baseView.addSubview(containerCollectionView)
        containerCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerCollectionView.leadingAnchor.constraint(equalTo: baseView.leadingAnchor, constant: 19),
            containerCollectionView.trailingAnchor.constraint(equalTo: baseView.trailingAnchor, constant: -19),
            containerCollectionView.topAnchor.constraint(equalTo: containerViewNav.bottomAnchor, constant: 5.73),
            containerCollectionView.heightAnchor.constraint(equalToConstant: 138)])
        containerCollectionView.layer.masksToBounds = true
        containerCollectionView.layer.cornerRadius = 10
        
        collectionViewPromo.delegate = self
        collectionViewPromo.dataSource = self
        containerCollectionView.addSubview(collectionViewPromo)
        collectionViewPromo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionViewPromo.topAnchor.constraint(equalTo: containerCollectionView.topAnchor),
            collectionViewPromo.leadingAnchor.constraint(equalTo: containerCollectionView.leadingAnchor),
            collectionViewPromo.trailingAnchor.constraint(equalTo: containerCollectionView.trailingAnchor),
            collectionViewPromo.bottomAnchor.constraint(equalTo: containerCollectionView.bottomAnchor)
            ])

        collectionViewPromo.isPagingEnabled = true
        collectionViewPromo.showsHorizontalScrollIndicator = false

        whiteView.addSubview(stackViewIndicator)
        stackViewIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewIndicator.heightAnchor.constraint(equalToConstant: 10),
            stackViewIndicator.widthAnchor.constraint(equalToConstant: 45),
            stackViewIndicator.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 68),
            stackViewIndicator.centerXAnchor.constraint(equalTo: whiteView.centerXAnchor)
            ])
        

        stackViewIndicator.addArrangedSubview(indicatorbanner1)
        indicatorbanner1.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner1.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner1.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner1.layer.masksToBounds = true
        indicatorbanner1.layer.cornerRadius = 2.5
        indicatorbanner1.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner2)
        indicatorbanner2.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner2.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner2.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner2.layer.masksToBounds = true
        indicatorbanner2.layer.cornerRadius = 2.5
        indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner3)
        indicatorbanner3.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner3.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner3.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner3.layer.masksToBounds = true
        indicatorbanner3.layer.cornerRadius = 2.5
        indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner4)
        indicatorbanner4.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner4.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner4.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner4.layer.masksToBounds = true
        indicatorbanner4.layer.cornerRadius = 2.5
        indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner5)
        indicatorbanner5.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner5.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner5.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner5.layer.masksToBounds = true
        indicatorbanner5.layer.cornerRadius = 2.5
        indicatorbanner5.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        whiteView.addSubview(viewColletionProduct)
        viewColletionProduct.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            viewColletionProduct.topAnchor.constraint(equalTo: stackViewIndicator.bottomAnchor, constant: 15.47),
            viewColletionProduct.centerXAnchor.constraint(equalTo:whiteView.centerXAnchor),
            viewColletionProduct.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor),
            viewColletionProduct.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor),
            viewColletionProduct.heightAnchor.constraint(equalToConstant: 223)

            ])
        print(viewColletionProduct.frame.size.height)
        print(viewColletionProduct.frame.size.width)
        viewColletionProduct.backgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 0.7280607877)
        viewColletionProduct.layoutIfNeeded()

        let headerCollectionProduct = UILabel()
        viewColletionProduct.addSubview(headerCollectionProduct)
        UIHelper.makeLabel(label: headerCollectionProduct, corner: 0, allignment: .left, leadingAnchor: viewColletionProduct.leadingAnchor, trailingAnchor: viewColletionProduct.trailingAnchor, topAnchor: viewColletionProduct.topAnchor, leadingConstant: 19, trailingConstant: -19, topConstant: 0, heightAnchor: 18, widthAnchor: viewColletionProduct.frame.size.width)
        headerCollectionProduct.backgroundColor = UIColor.clear
        headerCollectionProduct.text = "Produk Asuransi"
        headerCollectionProduct.font = UIFont(name: "AvantGarde Bk BT", size: 15)
        headerCollectionProduct.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
//        headerCollectionProduct.layoutIfNeeded()

        collectionViewProduct.delegate = self
        collectionViewProduct.dataSource = self
        viewColletionProduct.addSubview(collectionViewProduct)
        collectionViewProduct.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionViewProduct.topAnchor.constraint(equalTo: headerCollectionProduct.bottomAnchor, constant:10),
            collectionViewProduct.bottomAnchor.constraint(equalTo: viewColletionProduct.bottomAnchor, constant:-12.36),
            collectionViewProduct.leadingAnchor.constraint(equalTo: viewColletionProduct.leadingAnchor, constant:10),
            collectionViewProduct.trailingAnchor.constraint(equalTo: viewColletionProduct.trailingAnchor, constant: -10)
            ])
        collectionViewProduct.showsHorizontalScrollIndicator = false
        collectionViewProduct.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectionViewProduct.layoutIfNeeded()


        whiteView.addSubview(labelPromo)
        UIHelper.makeLabel(label: labelPromo, corner: 0, allignment: .left, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: collectionViewProduct.bottomAnchor,   leadingConstant: 19, trailingConstant: -19, topConstant: 17.64, heightAnchor: 18, widthAnchor: whiteView.frame.size.width)
        labelPromo.text = "Promo"
        labelPromo.font = UIFont(name: "AvantGarde Bk BT", size: 15)
        labelPromo.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        labelPromo.layoutIfNeeded()


        whiteView.addSubview(viewPromo)
        UIHelper.makeView(view: viewPromo, leadingAnchor: whiteView.leadingAnchor,trailingAnchor: whiteView.trailingAnchor, topAnchor: labelPromo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6, corner: 0,heightAnchor: 112, widthAnchor: 0)
         viewPromo.backgroundColor = UIColor.clear.withAlphaComponent(0)

        collectBannerPromo.delegate = self
        collectBannerPromo.dataSource = self
        viewPromo.addSubview(collectBannerPromo)
        collectBannerPromo.translatesAutoresizingMaskIntoConstraints = false
        UIHelper.makeContraintCollectionVIew(collectionView: collectBannerPromo, leadingAnchor: viewPromo.leadingAnchor, trailingAnchor: viewPromo.trailingAnchor, topAnchor: viewPromo.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, heightAnchor: 112, widthAnchor: 274)
        collectBannerPromo.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectBannerPromo.showsHorizontalScrollIndicator = false

        whiteView.addSubview(viewInfo)
        UIHelper.makeView(view: viewInfo, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewPromo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 17.64, corner: 0,  heightAnchor: 180, widthAnchor: 0)
         viewInfo.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        viewInfo.addSubview(labelInfo)
        UIHelper.makeLabel(label: labelInfo, corner: 0, allignment: .left, leadingAnchor: viewInfo.leadingAnchor, trailingAnchor: viewInfo.trailingAnchor, topAnchor: viewInfo.topAnchor, leadingConstant: 19, trailingConstant: 19, topConstant: 0, heightAnchor: 18, widthAnchor: viewInfo.frame.size.width)
        labelInfo.text = "Info"
        labelInfo.font = UIFont(name: "AvantGarde Bk BT", size: 15)
        labelInfo.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        collectionViewInfo.delegate = self
        collectionViewInfo.dataSource = self
        viewInfo.addSubview(collectionViewInfo)
        UIHelper.makeContraintCollectionVIew(collectionView: collectionViewInfo, leadingAnchor: viewInfo.leadingAnchor, trailingAnchor: viewInfo.trailingAnchor, topAnchor: labelInfo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6, heightAnchor: 156, widthAnchor: 0)
        collectionViewInfo.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectionViewInfo.showsHorizontalScrollIndicator = false
        
        whiteView.addSubview(viewGalery)
        UIHelper.makeView(view: viewGalery, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewInfo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 18, corner: 0, heightAnchor: 184, widthAnchor: 0)
        viewGalery.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        viewGalery.addSubview(labelGalery)
        UIHelper.makeLabel(label: labelGalery, corner: 0, allignment: .left, leadingAnchor: viewGalery.leadingAnchor, trailingAnchor: viewGalery.trailingAnchor, topAnchor: viewGalery.topAnchor, leadingConstant: 19, trailingConstant: 19, topConstant: 0, heightAnchor: 18, widthAnchor: 0)
        labelGalery.text = "Galeri"
        labelGalery.font = UIFont(name: "AvantGarde Bk BT", size: 15)
     
        labelGalery.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        collectionViewGalery.delegate = self
        collectionViewGalery.dataSource = self
        viewGalery.addSubview(collectionViewGalery)
        UIHelper.makeContraintCollectionVIew(collectionView: collectionViewGalery, leadingAnchor: viewGalery.leadingAnchor, trailingAnchor: viewGalery.trailingAnchor, topAnchor: labelGalery.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 8, heightAnchor: 160, widthAnchor: 0)
        collectionViewGalery.backgroundColor = UIColor.white.withAlphaComponent(0)
        collectionViewGalery.showsHorizontalScrollIndicator = false
        
        whiteView.addSubview(viewMap)
        UIHelper.makeView(view: viewMap, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewGalery.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 20, corner: 0, heightAnchor: 262, widthAnchor: 0)
        viewMap.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        viewMap.addSubview(labelMap)
        UIHelper.makeLabel(label: labelMap, corner: 0, allignment: .left, leadingAnchor: viewMap.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewMap.topAnchor, leadingConstant: 19, trailingConstant: 19, topConstant: 0, heightAnchor: 18, widthAnchor: 0)
        labelMap.text = "Map"
        labelMap.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        viewMap.addSubview(imageViewMap)
        imageViewMap.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewMap.leadingAnchor.constraint(equalTo: viewGalery.leadingAnchor,constant: 19),
            imageViewMap.trailingAnchor.constraint(equalTo: viewGalery.trailingAnchor, constant: -19),
            imageViewMap.topAnchor.constraint(equalTo: labelMap.bottomAnchor, constant: 8),
            imageViewMap.heightAnchor.constraint(equalToConstant: 137)
        ])
        imageViewMap.backgroundColor = UIColor.clear.withAlphaComponent(0)
        imageViewMap.image = UIImage(named: "map.png")
        imageViewMap.layer.masksToBounds = true
        imageViewMap.layer.cornerRadius = 5
        imageViewMap.layoutIfNeeded()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionViewPromo {
            return CGSize(width: containerCollectionView.frame.size.width , height: 138)
        }else if collectionView == collectionViewProduct{
            return CGSize(width: 55, height: 82)
        }else if collectionView == collectBannerPromo{
            return CGSize(width: 274, height: 112)
        }else if collectionView == collectionViewInfo{
            return CGSize(width:147 , height:156 )
        }else if collectionView == collectionViewGalery {
            return CGSize(width: 96, height: 160)
        }else{
            return CGSize()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewProduct {
                       return 20
        }else if collectionView == collectionViewPromo{
            return 5
        }else if collectionView == collectBannerPromo{
             print("lewat")
            return 10
        }else if collectionView == collectionViewInfo{
            return 10
        }
        else if collectionView == collectionViewGalery{
            return 10
        }else{
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewProduct{
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellproduct", for: indexPath)
            cell.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            cell.layer.masksToBounds = true
            cell.layer.cornerRadius = 10
            
            let imageIcon = UIImageView()
            cell.addSubview(imageIcon)
            UIHelper.makeImageView(imageView: imageIcon, leadingAnchor: cell.leadingAnchor, topAnchor: cell.topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 55)
            imageIcon.backgroundColor = UIColor.red
            
            let labelIcon = UILabel()
            cell.addSubview(labelIcon)
            UIHelper.makeLabel(label: labelIcon, corner: 0, allignment: .center, leadingAnchor: cell.leadingAnchor, trailingAnchor: cell.trailingAnchor ,topAnchor: imageIcon.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 4, heightAnchor: 23, widthAnchor: 0)
            labelIcon.text = "Icon name"
            labelIcon.font = UIFont(name: "AvantGarde Bk BT", size: 10)
            return cell
            
        }else if collectionView == collectionViewPromo{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellpromo", for: indexPath)
            cell.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
            button.backgroundColor = .red
            cell.addSubview(button)
            arrayIndicator[indexPath.row].backgroundColor = .red
            return cell
            
        }else if collectionView == collectBannerPromo{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellBannerPromo", for: indexPath)
            cell3.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            cell3.layer.masksToBounds = true
            cell3.layer.cornerRadius = 10
            
             let imagePromo = UIImageView()
            cell3.addSubview(imagePromo)
            UIHelper.makeImageView(imageView: imagePromo, leadingAnchor: cell3.leadingAnchor,  topAnchor: cell3.topAnchor, leadingConstant: 0,  topConstant: 0, corner: 10, heightAnchor: 112 )
            imagePromo.backgroundColor = UIColor.red
            return cell3
            
        }else if collectionView == collectionViewInfo{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellInfo", for: indexPath)
            cell4.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            cell4.layer.masksToBounds = true
            cell4.layer.cornerRadius = 10
            
            let imageInfo = UIImageView()
            cell4.addSubview(imageInfo)
            UIHelper.makeImageView(imageView: imageInfo, leadingAnchor: cell4.leadingAnchor, topAnchor: cell4.topAnchor, leadingConstant: 0,  topConstant: 0, corner: 10, heightAnchor: 82)
            imageInfo.backgroundColor = UIColor.red
            
            let imageTime = UIImageView()
            cell4.addSubview(imageTime)
            UIHelper.makeImageView(imageView: imageTime, leadingAnchor: cell4.leadingAnchor,  topAnchor: imageInfo.bottomAnchor, leadingConstant: 0, topConstant: 5.26, corner: 0, heightAnchor: 10)
            imageTime.backgroundColor = .red
            
            let labelTime = UILabel()
            cell4.addSubview(labelTime)
            UIHelper.makeLabel(label: labelTime, corner: 0, allignment: .left, leadingAnchor: imageTime.trailingAnchor, trailingAnchor: cell4.trailingAnchor, topAnchor: imageInfo.bottomAnchor, leadingConstant: 3, trailingConstant: 0, topConstant: 5.26, heightAnchor: 10, widthAnchor: 0)
            labelTime.backgroundColor = .red
            
            let labelnfo = UILabel()
            cell4.addSubview(labelnfo)
            UIHelper.makeLabel(label: labelnfo, corner: 0, allignment: .left, leadingAnchor: cell4.leadingAnchor, trailingAnchor: cell4.trailingAnchor, topAnchor: imageTime.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 2, heightAnchor: 156-99.26, widthAnchor: 0)
            labelnfo.backgroundColor = .red
            return cell4
            
        }else if collectionView == collectionViewGalery{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellGalery", for: indexPath)
            cell5.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            cell5.layer.masksToBounds = true
            cell5.layer.cornerRadius = 10
            
            let imageGalery = UIImageView()
            cell5.addSubview(imageGalery)
            UIHelper.makeImageView(imageView: imageGalery, leadingAnchor: cell5.leadingAnchor, topAnchor: cell5.topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 92)
            imageGalery.backgroundColor = .red
            
            let imageTime = UIImageView()
            cell5.addSubview(imageTime)
            UIHelper.makeImageView(imageView: imageTime, leadingAnchor: cell5.leadingAnchor, topAnchor: imageGalery.bottomAnchor, leadingConstant: 0, topConstant: 6, corner: 0, heightAnchor: 10)
            imageTime.backgroundColor = .red

            let labelTime = UILabel()
            cell5.addSubview(labelTime)
            UIHelper.makeLabel(label: labelTime, corner: 0, allignment: .left, leadingAnchor: imageTime.trailingAnchor, trailingAnchor: cell5.trailingAnchor, topAnchor: imageGalery.bottomAnchor, leadingConstant: 3, trailingConstant: 0, topConstant: 6, heightAnchor: 10, widthAnchor: 0)
            labelTime.backgroundColor = .red

            let labelGalery = UILabel()
            cell5.addSubview(labelGalery)
            UIHelper.makeLabel(label: labelGalery, corner: 0, allignment: .left, leadingAnchor: cell5.leadingAnchor, trailingAnchor: cell5.trailingAnchor, topAnchor: imageTime.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 2, heightAnchor: 50, widthAnchor: 0)
            labelGalery.backgroundColor = .red
            return cell5
        }else{
            return UICollectionViewCell()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == collectionViewPromo {
            return 0
        }else if collectionView == collectionViewProduct{
            return 3
        }else if collectionView == collectBannerPromo{
            return 0
        }else if collectionView == collectionViewInfo{
            return 3
        }else if collectionView == collectionViewGalery{
            return 0
        }else{
            return 0
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == collectionViewPromo {
            return CGFloat(0)
        }else if collectionView == collectionViewProduct{
            return CGFloat(13)
        }else if collectionView == collectBannerPromo{
            return CGFloat(12)
        }else if collectionView == collectionViewInfo{
            return 13.15
        }else if collectionView == collectionViewGalery{
            return 14
        }else {
            return 0
        }
    }
    
}
