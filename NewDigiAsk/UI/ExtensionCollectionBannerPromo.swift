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
    let namaProdukArray = ["Kecelakaan Diri", "Kebakaran", "Kontruksi", "Tanggung Gugat", "Pengangkutan Barang", "Perjalanan", "Kerusakan Mesin", "Property All Risk", "Uang", "Alat Berat", "Penjaminan", "Kredit Perdagangan", "Kredit Serba Guna", "Surety Bond", "Kontra Bank Garnis", "Custom Bond"]
    let infoPromo = ["info1","info2","info3"]
    let galeri = ["galeri1","galeri2", "galeri3","galeri4"]


extension HomeMenuViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
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
//        indicatorbanner1.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner2)
        indicatorbanner2.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner2.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner2.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner2.layer.masksToBounds = true
        indicatorbanner2.layer.cornerRadius = 2.5
//        indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner3)
        indicatorbanner3.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner3.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner3.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner3.layer.masksToBounds = true
        indicatorbanner3.layer.cornerRadius = 2.5
//        indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner4)
        indicatorbanner4.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner4.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner4.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner4.layer.masksToBounds = true
        indicatorbanner4.layer.cornerRadius = 2.5
//        indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
        stackViewIndicator.addArrangedSubview(indicatorbanner5)
        indicatorbanner5.translatesAutoresizingMaskIntoConstraints = false
        indicatorbanner5.heightAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner5.widthAnchor.constraint(equalToConstant: 5).isActive = true
        indicatorbanner5.layer.masksToBounds = true
        indicatorbanner5.layer.cornerRadius = 2.5
//        indicatorbanner5.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
        
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
        viewColletionProduct.backgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 0.2756046661)
        viewColletionProduct.layoutIfNeeded()

        let headerCollectionProduct = UILabel()
        viewColletionProduct.addSubview(headerCollectionProduct)
        UIHelper.makeLabel(label: headerCollectionProduct, corner: 0, allignment: .left, leadingAnchor: viewColletionProduct.leadingAnchor, trailingAnchor: viewColletionProduct.trailingAnchor, topAnchor: viewColletionProduct.topAnchor, leadingConstant: 19, trailingConstant: -19, topConstant: 0, heightAnchor: 18, widthAnchor: viewColletionProduct.frame.size.width)
        
        UIHelper.setTextLabel(label: headerCollectionProduct, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Produk Asuransi", kerning: 1)

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
               UIHelper.setTextLabel(label: labelPromo, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Promo", kerning: 1)



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
        UIHelper.setTextLabel(label: labelInfo, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Info", kerning: 1)

        
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
        UIHelper.setTextLabel(label: labelGalery, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Galeri", kerning: 1)

        
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
        UIHelper.setTextLabel(label: labelMap, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Map ", kerning: 1)

        
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
            return CGSize(width: 60, height: 82)
        }else if collectionView == collectBannerPromo{
            return CGSize(width: 274, height: 112)
        }else if collectionView == collectionViewInfo{
            return CGSize(width:147 , height:156 )
        }else if collectionView == collectionViewGalery {
            return CGSize(width: 96, height: 150)
        }else{
            return CGSize()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewProduct {
            return namaProdukArray.count
        }else if collectionView == collectionViewPromo{
            return 5
        }else if collectionView == collectBannerPromo{
             print("lewat")
            return 10
        }else if collectionView == collectionViewInfo{
            return infoPromo.count
        }
        else if collectionView == collectionViewGalery{
            return galeri.count
        }else{
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewProduct{
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellproduct", for: indexPath)
            cell.layer.masksToBounds = true
            cell.layer.cornerRadius = 10
            
            let containerIconImage = UIView()
            cell.addSubview(containerIconImage)
            UIHelper.makeView(view: containerIconImage, leadingAnchor: cell.leadingAnchor, trailingAnchor: cell.trailingAnchor, topAnchor: cell.topAnchor, leadingConstant: 2, trailingConstant: -2, topConstant: 0, corner: 8, heightAnchor: 56, widthAnchor: 56)
            containerIconImage.backgroundColor = .white
            containerIconImage.layer.shadowColor = UIColor.black.cgColor
            containerIconImage.layer.shadowOpacity = 0.5
            containerIconImage.layer.shadowOffset = .zero
            containerIconImage.layer.shadowRadius = 10
            containerIconImage.layer.shadowPath = UIBezierPath(rect: containerIconImage.bounds).cgPath
            containerIconImage.layer.shouldRasterize = true
            
            let imageIconProduct = UIImageView()
            containerIconImage.addSubview(imageIconProduct)
            UIHelper.makeImageView(imageView: imageIconProduct, leadingAnchor: containerIconImage.leadingAnchor, topAnchor: containerIconImage.topAnchor, leadingConstant: 14, topConstant: 13, corner: 5, heightAnchor: 27)
            imageIconProduct.widthAnchor.constraint(equalToConstant: 27).isActive = true
            imageIconProduct.image = UIImage(named: "\(namaProdukArray[indexPath.row]).png")
            imageIconProduct.contentMode = .scaleAspectFit
            imageIconProduct.backgroundColor?.withAlphaComponent(0)
            
            let labelIcon = UILabel()
            cell.contentView.addSubview(labelIcon)
            UIHelper.makeLabel(label: labelIcon, corner: 0, allignment: .center, leadingAnchor: cell.leadingAnchor, trailingAnchor: cell.trailingAnchor ,topAnchor: containerIconImage.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 4, heightAnchor: 23, widthAnchor: 0)
            labelIcon.numberOfLines = 0
            labelIcon.textAlignment = .center
            UIHelper.setTextLabel(label: labelIcon, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 8, text: "\(namaProdukArray[indexPath.row])", kerning: 0.5)
                
            
            return cell
            
        }else if collectionView == collectionViewPromo{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellpromo", for: indexPath)
            let bannerPromoImage  = UIImageView()
            cell.contentView.addSubview(bannerPromoImage)
            UIHelper.makeImageView(imageView: bannerPromoImage, leadingAnchor: cell.contentView.leadingAnchor, topAnchor: cell.contentView.topAnchor, leadingConstant: 0, topConstant: 0, corner: 0, heightAnchor: cell.frame.size.height)
            bannerPromoImage.widthAnchor.constraint(equalToConstant: containerCollectionView.frame.size.width).isActive = true
            bannerPromoImage.image = UIImage(named: "banner1.png")
            bannerPromoImage.contentMode = .scaleAspectFit
           
            if indexPath.row == 0 {
                indicatorbanner1.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner5.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
            }else if indexPath.row == 1{
                indicatorbanner1.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner2.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner5.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
            }else if indexPath.row == 2{
                indicatorbanner1.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner3.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner5.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                
            }else if indexPath.row == 3{
                indicatorbanner1.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner4.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                indicatorbanner5.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                
            }else {
                indicatorbanner1.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner5.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            }
            print("thid index = \(indexPath.row)")
            return cell
            
        }else if collectionView == collectBannerPromo{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellBannerPromo", for: indexPath)
            cell3.layer.masksToBounds = true
            cell3.layer.cornerRadius = 10
            
             let imagePromo = UIImageView()
            cell3.addSubview(imagePromo)
            UIHelper.makeImageView(imageView: imagePromo, leadingAnchor: cell3.leadingAnchor,  topAnchor: cell3.topAnchor, leadingConstant: 0,  topConstant: 0, corner: 10, heightAnchor: 112 )
            imagePromo.widthAnchor.constraint(equalToConstant: 274).isActive = true
            imagePromo.image = UIImage(named: "promo1.png")
            imagePromo.contentMode = .scaleAspectFit
            return cell3
            
        }else if collectionView == collectionViewInfo{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellInfo", for: indexPath)
            cell4.layer.masksToBounds = true
            cell4.layer.cornerRadius = 10
            
            let imageInfo = UIImageView()
            cell4.addSubview(imageInfo)
            UIHelper.makeImageView(imageView: imageInfo, leadingAnchor: cell4.leadingAnchor, topAnchor: cell4.topAnchor, leadingConstant: 0,  topConstant: 0, corner: 10, heightAnchor: 82)
            imageInfo.widthAnchor.constraint(equalToConstant: 147).isActive = true
            imageInfo.image = UIImage(named: "\(infoPromo[indexPath.row])")
            imageInfo.contentMode = .scaleAspectFit
            
            let imageTime = UIImageView()
            cell4.addSubview(imageTime)
            UIHelper.makeImageView(imageView: imageTime, leadingAnchor: cell4.leadingAnchor,  topAnchor: imageInfo.bottomAnchor, leadingConstant: 0, topConstant: 5.26, corner: 0, heightAnchor: 10)
            imageTime.widthAnchor.constraint(equalToConstant: 10).isActive = true
            imageTime.image = UIImage(named: "time")
            imageTime.contentMode = .scaleAspectFit
            
            let labelTime = UILabel()
            cell4.addSubview(labelTime)
            UIHelper.makeLabel(label: labelTime, corner: 0, allignment: .left, leadingAnchor: imageTime.trailingAnchor, trailingAnchor: cell4.trailingAnchor, topAnchor: imageInfo.bottomAnchor, leadingConstant: 3, trailingConstant: 0, topConstant: 5.26, heightAnchor: 10, widthAnchor: 0)
             UIHelper.setTextLabel(label: labelTime, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 8, text: "24 Oktober 2019", kerning: 0.5)
            
            let labeDeskripsilnfo = UILabel()
            cell4.addSubview(labeDeskripsilnfo)
            UIHelper.makeLabel(label: labeDeskripsilnfo, corner: 0, allignment: .left, leadingAnchor: cell4.leadingAnchor, trailingAnchor: cell4.trailingAnchor, topAnchor: imageTime.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 2, heightAnchor: 156-105, widthAnchor: 0)
             UIHelper.setTextLabel(label: labeDeskripsilnfo, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 11, text: "Askrindo serahkan bantuan mobil pintar untuk Aceh Askrindo serahkan bantuan mobil pintar untuk Aceh", kerning: 0.3)
            labeDeskripsilnfo.numberOfLines = 3
            return cell4
            
        }else if collectionView == collectionViewGalery{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellGalery", for: indexPath)
            cell5.layer.masksToBounds = true
            cell5.layer.cornerRadius = 10
            
            let imageGalery = UIImageView()
            cell5.addSubview(imageGalery)
            UIHelper.makeImageView(imageView: imageGalery, leadingAnchor: cell5.leadingAnchor, topAnchor: cell5.topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 92)
            imageGalery.widthAnchor.constraint(equalToConstant: 96).isActive = true
            imageGalery.image = UIImage(named: "\(galeri[indexPath.row])")
            imageGalery.contentMode = .scaleAspectFit
            
            let imageTime = UIImageView()
            cell5.addSubview(imageTime)
            UIHelper.makeImageView(imageView: imageTime, leadingAnchor: cell5.leadingAnchor, topAnchor: imageGalery.bottomAnchor, leadingConstant: 0, topConstant: 6, corner: 0, heightAnchor: 10)
            imageTime.widthAnchor.constraint(equalToConstant: 10).isActive = true
            imageTime.image = UIImage(named: "time.png")
            

            let labelTime = UILabel()
            cell5.addSubview(labelTime)
            UIHelper.makeLabel(label: labelTime, corner: 0, allignment: .left, leadingAnchor: imageTime.trailingAnchor, trailingAnchor: cell5.trailingAnchor, topAnchor: imageGalery.bottomAnchor, leadingConstant: 3, trailingConstant: 0, topConstant: 6, heightAnchor: 10, widthAnchor: 0)
            UIHelper.setTextLabel(label: labelTime, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 8, text: "24 Oktober 2019", kerning: 0.3)

            let labelGalery = UILabel()
            cell5.addSubview(labelGalery)
            UIHelper.makeLabel(label: labelGalery, corner: 0, allignment: .left, leadingAnchor: cell5.leadingAnchor, trailingAnchor: cell5.trailingAnchor, topAnchor: imageTime.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 2, heightAnchor: 40, widthAnchor: 0)
            UIHelper.setTextLabel(label: labelGalery, fontName: "AvantGarde Bk BT", fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 9, text: "Manfaat The Hijau boat kesehatan anfaat The Hijau boat kesehatan", kerning: 0.3)
            labelGalery.numberOfLines = 3
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     
        indexProduk = indexPath.row
        if collectionView == collectionViewProduct {
        let deskripsiProdukVC  = storyboard?.instantiateViewController(identifier: "DeskripsiProdukViewController") as! DeskripsiProdukViewController
        deskripsiProdukVC.indexProdukSelect = indexProduk
        navigationController?.pushViewController(deskripsiProdukVC, animated: true)
        }else if  collectionView == collectionViewPromo{
            if let url = URL(string: "https://www.askrindo.co.id") {
                UIApplication.shared.open(url)
            }
        }else if collectionView == collectBannerPromo{
            if let url = URL(string: "https://www.askrindo.co.id") {
                UIApplication.shared.open(url)
            }
        }else if collectionView == collectionViewInfo{
            let infoVC = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
            navigationController?.pushViewController(infoVC, animated: true)
        }else if collectionView == collectionViewGalery{
            let galeryVC = storyboard?.instantiateViewController(withIdentifier: "GaleryViewController") as! GaleryViewController
            navigationController?.pushViewController(galeryVC, animated: true)
        }
    }
    
}

class BannerPromoCollectionViewCell: UICollectionViewCell {
   
}
