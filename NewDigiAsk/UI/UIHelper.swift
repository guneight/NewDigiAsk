//
//  UIHelper.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 13/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

struct UIHelper {
    static let widthScreen = UIScreen.main.bounds.width
    static let heightScreen = UIScreen.main.bounds.height
    
    static func makeTetxField(textField : UITextField, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat, textColor : UIColor){
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            textField.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            textField.heightAnchor.constraint(equalToConstant: heightAnchor)
        
        ])
        textField.textColor = textColor
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = corner
        textField.layoutIfNeeded()
        
    }
    static func makeScroolView (scrollView : UIScrollView, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, widthAnchor:CGFloat, scrollAble : Bool, scrollShow : Bool ){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
        ])
        scrollView.showsVerticalScrollIndicator = scrollShow
        scrollView.isScrollEnabled = scrollAble
        scrollView.layer.masksToBounds = true
        scrollView.layer.cornerRadius = corner
        scrollView.layoutIfNeeded()
        
    }
    
    static func makeButton (button : UIButton, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat, widthAnchor:CGFloat){
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            button.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            button.heightAnchor.constraint(equalToConstant: heightAnchor)
            
            ])
        button.layer.masksToBounds = true
        button.layer.cornerRadius = corner
        button.layoutIfNeeded()
    }
    
    static func makeImageView (imageView : UIImageView, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            imageView.heightAnchor.constraint(equalToConstant: heightAnchor)
            
            ])
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = corner
        imageView.layoutIfNeeded()
    }
    
    
    static func makeView (view : UIView,leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat, widthAnchor:CGFloat){
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
            view.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            view.heightAnchor.constraint(equalToConstant: heightAnchor)
            
            ])
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.cornerRadius = corner
        view.layoutIfNeeded()
        
    }
    
    static func makeContraintCollectionVIew(collectionView : UICollectionView,leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, heightAnchor : CGFloat, widthAnchor:CGFloat){
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
//            collectionView.widthAnchor.constraint(equalToConstant: widthAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: heightAnchor)
            ])
        collectionView.layoutIfNeeded()
    }
    
    static func makeLabel(label : UILabel, corner : CGFloat, allignment: NSTextAlignment,leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,trailingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, heightAnchor : CGFloat, widthAnchor:CGFloat){
        
        label.translatesAutoresizingMaskIntoConstraints  = false
               NSLayoutConstraint.activate([
                   label.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
                   label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
                   label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
                   label.heightAnchor.constraint(equalToConstant: heightAnchor)
                   ])
        label.layer.masksToBounds = true
        label.layer.cornerRadius = corner
        label.textAlignment = allignment
        label.layoutIfNeeded()
    }
    
    static func alertShowBasic(title: String, msg: String, vc: UIViewController)
    {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "UBAH", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "BENAR", style: .default, handler: nil))
        vc.present(alert,animated: true)
    }
}


