//
//  ExtensionCollectionBannerPromo.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 12/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
let heightScreenIPhone = 0
let heightScreenIPad = 0
var device : String = ""
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
    cvPromo.register(collectionViewPromoCell.self, forCellWithReuseIdentifier: "cellpromo")
    return cvPromo
}()

let collectionViewProduct : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
    let cvListProduct = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cvListProduct.register(collectionViewProductCell.self, forCellWithReuseIdentifier: "cellproduct")
    
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
    cvBannerPromo.register(PromoViewCell.self, forCellWithReuseIdentifier: "cellBannerPromo")
    return cvBannerPromo
    
}()


let collectionViewInfo  : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
    let cvInfo = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cvInfo.register(collectionViewInfoCell.self, forCellWithReuseIdentifier: "cellInfo")
    return cvInfo
    
}()

let collectionViewGalery  : UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.sectionInset = UIEdgeInsets(top: 0, left: 19, bottom: 0, right: 0)
    let cvGalery = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cvGalery.register(collectionViewGaleryCell.self, forCellWithReuseIdentifier: "cellGalery")
    return cvGalery
}()

func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat {
    let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
    label.numberOfLines = 0
    label.lineBreakMode = NSLineBreakMode.byWordWrapping
    label.font = font
    label.text = text

    label.sizeToFit()
    return label.frame.height
}
let viewColletionProduct = UIView()
let viewPromo = UIView()
let labelPromo = UILabel()
let viewInfo = UIView()
let labelInfo = UILabel()
let viewGalery = UIView()
let labelGalery = UILabel()


let indicatorbanner1 = UILabel()
let indicatorbanner2 = UILabel()
let indicatorbanner3 = UILabel()
let indicatorbanner4 = UILabel()
let indicatorbanner5 = UILabel()
let arrayIndicator = [indicatorbanner1, indicatorbanner2,indicatorbanner3, indicatorbanner4, indicatorbanner5]
var namaProdukArray = ["Kecelakaan Diri", "Kebakaran", "Kontruksi", "Tanggung Gugat", "Pengangkutan Barang", "Perjalanan", "Kerusakan Mesin", "Property All Risk", "Uang", "Alat Berat", "Penjaminan", "Kredit Perdagangan", "Kredit Serba Guna", "Surety Bond", "Kontra Bank Garnis", "Custom Bond"]
let infoPromo = ["info1","info2","info3"]
let galeri = ["galeri1","galeri2", "galeri3","galeri4","galeri1","galeri2", "galeri3","galeri4"]
let info = ["Askrindo serahkan bantuan mobil pintar untuk Aceh Askrindo serahkan bantuan mobil pintar untuk Aceh","Aceh Askrindo serahkan bantuan mobil pintar untuk Aceh", " serahkan bantuan mobil pintar untuk Aceh Askrindo serahkan  mobil pintar untuk Aceh","Askrindo pintar untuk Aceh Askrindo serahkan  mobil pintar untuk Aceh","Askrindo serahkan bantuan mobil pintar untuk Aceh Askrindo a Aceh"]


extension HomeMenuViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func cvSetup(){
        let width = view.frame.size.width
    
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
            containerCollectionView.heightAnchor.constraint(equalToConstant: width/2.5)
        ])
        containerCollectionView.backgroundColor = .white
        containerCollectionView.layer.masksToBounds = true
        containerCollectionView.layer.cornerRadius = 10
        
        
        containerCollectionView.addSubview(collectionViewPromo)
        collectionViewPromo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionViewPromo.topAnchor.constraint(equalTo: containerCollectionView.topAnchor),
            collectionViewPromo.leadingAnchor.constraint(equalTo: containerCollectionView.leadingAnchor),
            collectionViewPromo.trailingAnchor.constraint(equalTo: containerCollectionView.trailingAnchor),
            collectionViewPromo.bottomAnchor.constraint(equalTo: containerCollectionView.bottomAnchor)
        ])
        collectionViewPromo.backgroundColor = .white
        collectionViewPromo.isPagingEnabled = true
        collectionViewPromo.showsHorizontalScrollIndicator = false
        
        whiteView.addSubview(stackViewIndicator)
        stackViewIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewIndicator.heightAnchor.constraint(equalToConstant: 10),
            stackViewIndicator.widthAnchor.constraint(equalToConstant: 45),
            stackViewIndicator.topAnchor.constraint(equalTo: containerCollectionView.bottomAnchor, constant: 10),
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
        ])
        if width > 414 {
            viewColletionProduct.heightAnchor.constraint(equalToConstant: width*0.55).isActive = true
        }else{
            viewColletionProduct.heightAnchor.constraint(equalToConstant: 223).isActive = true
        }
       
        viewColletionProduct.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.09586365582)
        viewColletionProduct.layoutIfNeeded()
        
        let headerCollectionProduct = UILabel()
        viewColletionProduct.addSubview(headerCollectionProduct)
        UIHelper.makeLabel(label: headerCollectionProduct, corner: 0, allignment: .left, leadingAnchor: viewColletionProduct.leadingAnchor, trailingAnchor: viewColletionProduct.trailingAnchor, topAnchor: viewColletionProduct.topAnchor, leadingConstant: 19, trailingConstant: -19, topConstant: 0, heightAnchor: 18, widthAnchor: viewColletionProduct.frame.size.width)
        
        UIHelper.setTextLabel(label: headerCollectionProduct, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Produk Asuransi", kerning: 0)
        
        
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
        UIHelper.setTextLabel(label: labelPromo, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Promo", kerning: 0)
        
        
        
        whiteView.addSubview(viewPromo)
        UIHelper.makeView(view: viewPromo, leadingAnchor: whiteView.leadingAnchor,trailingAnchor: whiteView.trailingAnchor, topAnchor: labelPromo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6, corner: 0,heightAnchor: (width-120)/2.5, widthAnchor: 0)
        viewPromo.backgroundColor = UIColor.clear.withAlphaComponent(0)
        
        collectBannerPromo.delegate = self
        collectBannerPromo.dataSource = self
        viewPromo.backgroundColor = .white
        viewPromo.addSubview(collectBannerPromo)
        collectBannerPromo.translatesAutoresizingMaskIntoConstraints = false
        
        UIHelper.makeContraintCollectionVIew(collectionView: collectBannerPromo, leadingAnchor: viewPromo.leadingAnchor, trailingAnchor: viewPromo.trailingAnchor, topAnchor: viewPromo.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, heightAnchor: viewPromo.frame.size.height, widthAnchor: viewPromo.frame.size.width)
        collectBannerPromo.backgroundColor = .white
        
        collectBannerPromo.showsHorizontalScrollIndicator = false
        
        whiteView.addSubview(viewInfo)
        if width > 414 {
            UIHelper.makeView(view: viewInfo, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewPromo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 17.64, corner: 0,  heightAnchor: width/2.5, widthAnchor: 0)
            
        }else{
            UIHelper.makeView(view: viewInfo, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewPromo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 17.64, corner: 0,  heightAnchor: 180, widthAnchor: 0)
        }
        viewInfo.backgroundColor = .white
        
        viewInfo.addSubview(labelInfo)
        UIHelper.makeLabel(label: labelInfo, corner: 0, allignment: .left, leadingAnchor: viewInfo.leadingAnchor, trailingAnchor: viewInfo.trailingAnchor, topAnchor: viewInfo.topAnchor, leadingConstant: 19, trailingConstant: 19, topConstant: 0, heightAnchor: 18, widthAnchor: viewInfo.frame.size.width)
        UIHelper.setTextLabel(label: labelInfo, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Info", kerning: 0)
        
        viewInfo.addSubview(collectionViewInfo)
        UIHelper.makeContraintCollectionVIew(collectionView: collectionViewInfo, leadingAnchor: viewInfo.leadingAnchor, trailingAnchor: viewInfo.trailingAnchor, topAnchor: labelInfo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 6, heightAnchor: viewInfo.frame.size.height, widthAnchor: 0)
        collectionViewInfo.backgroundColor = UIColor.clear.withAlphaComponent(0)
        collectionViewInfo.showsHorizontalScrollIndicator = false
        collectionViewInfo.backgroundColor = .white
        
        whiteView.addSubview(viewGalery)
        if width > 414 {
            UIHelper.makeView(view: viewGalery, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewInfo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 18, corner: 0, heightAnchor: width/3, widthAnchor: 0)
            
        }else{
            UIHelper.makeView(view: viewGalery, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewInfo.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 18, corner: 0, heightAnchor: 184, widthAnchor: 0)
        }
        viewGalery.backgroundColor = .white
        viewGalery.addSubview(labelGalery)
        UIHelper.makeLabel(label: labelGalery, corner: 0, allignment: .left, leadingAnchor: viewGalery.leadingAnchor, trailingAnchor: viewGalery.trailingAnchor, topAnchor: viewGalery.topAnchor, leadingConstant: 19, trailingConstant: 19, topConstant: 0, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: labelGalery, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Galeri", kerning: 0)
        
        
        viewGalery.addSubview(collectionViewGalery)
        UIHelper.makeContraintCollectionVIew(collectionView: collectionViewGalery, leadingAnchor: viewGalery.leadingAnchor, trailingAnchor: viewGalery.trailingAnchor, topAnchor: labelGalery.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 8, heightAnchor: viewGalery.frame.size.height, widthAnchor: 0)
        collectionViewGalery.backgroundColor = UIColor.white
        collectionViewGalery.showsHorizontalScrollIndicator = false
        
        whiteView.addSubview(viewMap)
        UIHelper.makeView(view: viewMap, leadingAnchor: whiteView.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewGalery.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 20, corner: 0, heightAnchor: width/2, widthAnchor: 0)
        viewMap.backgroundColor = UIColor.white
        viewMap.isUserInteractionEnabled = true
        
        viewMap.addSubview(labelMap)
        UIHelper.makeLabel(label: labelMap, corner: 0, allignment: .left, leadingAnchor: viewMap.leadingAnchor, trailingAnchor: whiteView.trailingAnchor, topAnchor: viewMap.topAnchor, leadingConstant: 19, trailingConstant: 19, topConstant: 0, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: labelMap, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .bold, fontSize: 15, text: "Map ", kerning: 0)
        
        viewMap.addSubview(imageViewMap)
        imageViewMap.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageViewMap.leadingAnchor.constraint(equalTo: viewGalery.leadingAnchor,constant: 19),
            imageViewMap.trailingAnchor.constraint(equalTo: viewGalery.trailingAnchor, constant: -19),
            imageViewMap.topAnchor.constraint(equalTo: labelMap.bottomAnchor, constant: 8),
            imageViewMap.heightAnchor.constraint(equalToConstant: (width-40)/2.4)
        ])
        
        imageViewMap.backgroundColor = UIColor.white
        imageViewMap.image = UIImage(named: "map.png")
        imageViewMap.layer.masksToBounds = true
        imageViewMap.layer.cornerRadius = 5
        imageViewMap.contentMode = .scaleAspectFit
        imageViewMap.layoutIfNeeded()
        }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionViewPromo {
            return CGSize(width: containerCollectionView.frame.size.width , height: containerCollectionView.frame.size.height)
        }else if collectionView == collectionViewProduct{
            if viewColletionProduct.frame.size.width > 414{
                return CGSize(width: viewColletionProduct.frame.width/6.5, height: viewColletionProduct.frame.height*0.45)
            }else{
                return CGSize(width: 60, height: 82)
            }
        }else if collectionView == collectBannerPromo{
            return CGSize(width: collectBannerPromo.frame.size.height*2.44, height: collectBannerPromo.frame.size.height)
        }else if collectionView == collectionViewInfo{
            if viewInfo.frame.size.width > 414{
                return CGSize(width:viewInfo.frame.size.width/2.3 , height:viewInfo.frame.size.height  )
            }else{
                return CGSize(width:146 , height:160  )
            }
            
        }else if collectionView == collectionViewGalery {
            if viewGalery.frame.size.width>414{
                return CGSize(width: viewGalery.frame.size.width/4.5, height: viewGalery.frame.size.height)
            }else{
                return CGSize(width: 96, height: viewGalery.frame.size.height)
            }
            
        }else{
            return CGSize()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewProduct {
            return listProduct.count
        }else if collectionView == collectionViewPromo{
            return 5
        }else if collectionView == collectBannerPromo{
            return promo.count
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
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellproduct", for: indexPath) as! collectionViewProductCell
            cell.imageIconProduct.image = UIImage(named: "\(listProduct[indexPath.row].product.namaProduct)")
            cell.labelIcon.text = listProduct[indexPath.row].product.namaProduct
            cell.backgroundColor = UIColor.clear
            return cell
            
        }else if collectionView == collectionViewPromo{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellpromo", for: indexPath) as! collectionViewPromoCell
            cell.imageTopPromo.image = UIImage(named: "banner1")
            
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
                
            }else if indexPath.row == 4{
                indicatorbanner1.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner2.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner3.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner4.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.831372549, blue: 0.8235294118, alpha: 1)
                indicatorbanner5.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            }
            return cell
            
        }else if collectionView == collectBannerPromo{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellBannerPromo", for: indexPath) as! PromoViewCell
            cell3.layer.masksToBounds = true
            cell3.layer.cornerRadius = 10
            cell3.imagePromo.image = UIImage(named: promo[indexPath.row])
            return cell3
            
        }else if collectionView == collectionViewInfo{
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellInfo", for: indexPath) as! collectionViewInfoCell
            cell4.layer.masksToBounds = true
            cell4.layer.cornerRadius = 10
            cell4.imageInfo.image = UIImage(named: infoPromo[indexPath.row])
            UIHelper.setTextLabel(label: cell4.labelTime, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 8, text: "24 Oktober 2019", kerning: 0)
            UIHelper.setTextLabel(label: cell4.labeDeskripsilnfo, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 11, text: info[indexPath.row], kerning: 0)
            cell4.backgroundColor = .white
            return cell4
            
        }else if collectionView == collectionViewGalery{
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellGalery", for: indexPath) as! collectionViewGaleryCell
            cell5.layer.masksToBounds = true
            cell5.layer.cornerRadius = 10
            cell5.imageGalery.image = UIImage(named: galeri[indexPath.row])
            UIHelper.setTextLabel(label: cell5.labelTime, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 8, text: "24 Oktober 2019", kerning: 0)
           cell5.backgroundColor = .white
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
            return 0
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
            return CGFloat(15)
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
            let produkDetailVC  = storyboard?.instantiateViewController(identifier: "ProdukDetailViewController") as! ProdukDetailViewController
            produkDetailVC.indexProdukSelect = indexPath.row
            produkDetailVC.product = listProduct[indexPath.row].product
            navigationController?.pushViewController(produkDetailVC, animated: true)
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



class collectionViewPromoCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewPromo()
    }
    let imageTopPromo = UIImageView()
    func setupViewPromo(){
        addSubview(imageTopPromo)
        imageTopPromo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageTopPromo.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageTopPromo.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageTopPromo.topAnchor.constraint(equalTo: topAnchor),
            imageTopPromo.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        imageTopPromo.contentMode = .scaleAspectFill
        imageTopPromo.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class collectionViewProductCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewProduct()
    }
    
    let containerIconImage = UIView()
    let imageIconProduct = UIImageView()
    let labelIcon = UILabel()
    func setupViewProduct(){
        addSubview(containerIconImage)
        containerIconImage.addSubview(imageIconProduct)
        addSubview(labelIcon)
        if viewColletionProduct.frame.size.width > 414 {
            UIHelper.makeView(view: containerIconImage, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: topAnchor, leadingConstant: 2, trailingConstant: -2, topConstant: 0, corner: 8, heightAnchor: frame.size.width, widthAnchor: frame.size.width)
            
            UIHelper.makeImageView(imageView: imageIconProduct, leadingAnchor: containerIconImage.leadingAnchor, topAnchor: containerIconImage.topAnchor, leadingConstant: containerIconImage.frame.size.width*0.3, topConstant: containerIconImage.frame.size.width*0.3, corner: 5, heightAnchor: containerIconImage.frame.size.width*0.4)
            imageIconProduct.widthAnchor.constraint(equalToConstant: containerIconImage.frame.size.width*0.4).isActive = true
            
            UIHelper.makeLabel(label: labelIcon, corner: 0, allignment: .center, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor ,topAnchor: containerIconImage.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 4, heightAnchor: containerIconImage.frame.size.width/3, widthAnchor: 0)
            UIHelper.setTextLabel(label: labelIcon, fontName: fontNameHelper.AvantGardeITCbyBTDemi, fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 15, text: " ", kerning: 0)
            labelIcon.numberOfLines = 0
        }else{
            UIHelper.makeView(view: containerIconImage, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: topAnchor, leadingConstant: 2, trailingConstant: -2, topConstant: 0, corner: 8, heightAnchor: 56, widthAnchor: 56)
            
            UIHelper.makeImageView(imageView: imageIconProduct, leadingAnchor: containerIconImage.leadingAnchor, topAnchor: containerIconImage.topAnchor, leadingConstant: 14, topConstant: 14, corner: 5, heightAnchor: 28)
            imageIconProduct.widthAnchor.constraint(equalToConstant: 28).isActive = true
            
            UIHelper.makeLabel(label: labelIcon, corner: 0, allignment: .center, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor ,topAnchor: containerIconImage.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 4, heightAnchor: 23, widthAnchor: 0)
            
            UIHelper.setTextLabel(label: labelIcon, fontName: fontNameHelper.AvantGardeITCbyBTBook, fontColor: #colorLiteral(red: 0.1019607843, green: 0.1019607843, blue: 0.1019607843, alpha: 1), weight: .bold, fontSize: 8, text: " ", kerning: 0)
        }
        
        containerIconImage.backgroundColor = .white
        containerIconImage.layer.shadowColor = UIColor.black.cgColor
        containerIconImage.layer.shadowOpacity = 1
        containerIconImage.layer.shadowOffset = .zero
        containerIconImage.layer.shadowRadius = 10
        containerIconImage.layer.shadowPath = UIBezierPath(rect: containerIconImage.bounds).cgPath
        containerIconImage.layer.shouldRasterize = true
        
        imageIconProduct.contentMode = .scaleAspectFit
        imageIconProduct.backgroundColor?.withAlphaComponent(0)
        
        labelIcon.numberOfLines = 0
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class PromoViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewPromo()
    }
    
    let imagePromo = UIImageView()
    func setupViewPromo(){
        addSubview(imagePromo)
        imagePromo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagePromo.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagePromo.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagePromo.topAnchor.constraint(equalTo: topAnchor),
            imagePromo.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        imagePromo.contentMode = .scaleAspectFit
        imagePromo.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class collectionViewInfoCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewInfo()
    }
    
    let imageInfo = UIImageView()
    let imageTime = UIImageView()
    let labelTime = UILabel()
    let labeDeskripsilnfo = UILabel()
    
    func setupViewInfo(){
        addSubview(imageInfo)
        if viewInfo.frame.size.width > 414 {
            UIHelper.makeImageView(imageView: imageInfo, leadingAnchor: leadingAnchor, topAnchor:topAnchor, leadingConstant: 0,  topConstant: 0, corner: 10, heightAnchor: frame.size.height*0.75)
            imageInfo.widthAnchor.constraint(equalToConstant: frame.size.width).isActive = true
        }else{
            UIHelper.makeImageView(imageView: imageInfo, leadingAnchor: leadingAnchor, topAnchor:topAnchor, leadingConstant: 0,  topConstant: 0, corner: 10, heightAnchor: 82)
            imageInfo.widthAnchor.constraint(equalToConstant: frame.size.width).isActive = true
        }
        
        imageInfo.contentMode = .scaleAspectFit
        imageInfo.backgroundColor = .white
        addSubview(imageTime)
        UIHelper.makeImageView(imageView: imageTime, leadingAnchor: leadingAnchor,  topAnchor: imageInfo.bottomAnchor, leadingConstant: 0, topConstant: 5.26, corner: 0, heightAnchor: 10)
        imageTime.widthAnchor.constraint(equalToConstant: 10).isActive = true
        imageTime.image = UIImage(named: "time")
        imageTime.contentMode = .scaleAspectFit
        
        addSubview(labelTime)
        UIHelper.makeLabel(label: labelTime, corner: 0, allignment: .left, leadingAnchor: imageTime.trailingAnchor, trailingAnchor: trailingAnchor, topAnchor: imageInfo.bottomAnchor, leadingConstant: 3, trailingConstant: 0, topConstant: 5, heightAnchor: 10, widthAnchor: 0)
        
        addSubview(labeDeskripsilnfo)
        UIHelper.makeLabel(label: labeDeskripsilnfo, corner: 0, allignment: .left, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: imageTime.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 2, heightAnchor: 156-105, widthAnchor: 0)
        UIHelper.setTextLabel(label: labeDeskripsilnfo, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), weight: .bold, fontSize: 16, text: "", kerning: 0.2)
        labeDeskripsilnfo.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class collectionViewGaleryCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewGalery()
    }
    
    let imageGalery = UIImageView()
    let imageTime = UIImageView()
    let labelTime = UILabel()
    let labelGalery = UILabel()
    
    func setupViewGalery(){
        addSubview(imageGalery)
        if viewGalery.frame.size.width > 414 {
            UIHelper.makeImageView(imageView: imageGalery, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: frame.size.height*0.7)
            imageGalery.widthAnchor.constraint(equalToConstant: frame.size.width).isActive = true
        }else{
            UIHelper.makeImageView(imageView: imageGalery, leadingAnchor: leadingAnchor, topAnchor: topAnchor, leadingConstant: 0, topConstant: 0, corner: 10, heightAnchor: 96)
            imageGalery.widthAnchor.constraint(equalToConstant: frame.size.width).isActive = true
        }
        
        imageGalery.contentMode = .scaleAspectFit
        imageGalery.backgroundColor = .white
        
        addSubview(imageTime)
        UIHelper.makeImageView(imageView: imageTime, leadingAnchor: leadingAnchor, topAnchor: imageGalery.bottomAnchor, leadingConstant: 0, topConstant: 6, corner: 0, heightAnchor: 10)
        imageTime.widthAnchor.constraint(equalToConstant: 10).isActive = true
        imageTime.image = UIImage(named: "time.png")
        
        addSubview(labelTime)
        UIHelper.makeLabel(label: labelTime, corner: 0, allignment: .left, leadingAnchor: imageTime.trailingAnchor, trailingAnchor: trailingAnchor, topAnchor: imageGalery.bottomAnchor, leadingConstant: 3, trailingConstant: 0, topConstant: 6, heightAnchor: 10, widthAnchor: 0)
        
        addSubview(labelGalery)
        UIHelper.makeLabel(label: labelGalery, corner: 0, allignment: .left, leadingAnchor: leadingAnchor, trailingAnchor: trailingAnchor, topAnchor: imageTime.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 2, heightAnchor: 40, widthAnchor: 0)
        labelGalery.numberOfLines = 3
        UIHelper.setTextLabel(label: labelGalery, fontName: fontNameHelper.NunitoBold, fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 11, text: "Manfaat The Hijau boat kesehatan anfaat The Hijau boat kesehatan", kerning: 0.2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


