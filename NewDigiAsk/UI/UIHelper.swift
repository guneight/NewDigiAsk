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
    
    static func setTextField(textField : UITextField, fontName : String!, fontColor : UIColor, weight : UIFont.Weight,fontSize: CGFloat, text : String, kerning : CGFloat){
    //        var fontType = UIFontDescriptor(name: fontName, size: fontSize)
    //        fontType = fontType.addingAttributes([UIFontDescriptor.AttributeName.traits : [UIFontDescriptor.TraitKey.weight : weight]])
    //        label.font = UIFont(descriptor: fontType, size: fontSize)
            textField.attributedText = NSAttributedString(string: "", attributes: [.kern: kerning])
            textField.textColor = fontColor
            textField.font = UIFont(name: fontName, size: fontSize)
            textField.placeholder = text
        }
    
    static func setTextLabel(label : UILabel, fontName : String!, fontColor : UIColor, weight : UIFont.Weight,fontSize: CGFloat, text : String, kerning : CGFloat){
//        var fontType = UIFontDescriptor(name: fontName, size: fontSize)
//        fontType = fontType.addingAttributes([UIFontDescriptor.AttributeName.traits : [UIFontDescriptor.TraitKey.weight : weight]])
//        label.font = UIFont(descriptor: fontType, size: fontSize)
        label.attributedText = NSAttributedString(string: text, attributes: [.kern: kerning])
        label.textColor = fontColor
        label.font = UIFont(name: fontName, size: fontSize)
    }
    
    static func makeSmalllabel(smallLabel : UILabel, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat,widthtAnchor : CGFloat){
           smallLabel.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               smallLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
               smallLabel.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
               smallLabel.heightAnchor.constraint(equalToConstant: heightAnchor),
               smallLabel.widthAnchor.constraint(equalToConstant: widthtAnchor)
           ])
           smallLabel.layer.masksToBounds = true
           smallLabel.layer.cornerRadius = corner
           smallLabel.layoutIfNeeded()

       }
       
    static func makeSmallButton(smallButton : UIButton, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, heightAnchor : CGFloat,widthtAnchor : CGFloat, borderWidth : CGFloat, colorBorder : CGColor ){
        smallButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            smallButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            smallButton.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            smallButton.heightAnchor.constraint(equalToConstant: heightAnchor),
            smallButton.widthAnchor.constraint(equalToConstant: widthtAnchor)
        ])
        smallButton.layer.masksToBounds = true
        smallButton.layer.cornerRadius = corner
        smallButton.layoutIfNeeded()
        smallButton.layer.borderWidth = borderWidth
        smallButton.layer.borderColor = colorBorder 
        
    }
    
    static func makeSmallTetxField(textField : UITextField, leadingAnchor : NSLayoutAnchor<NSLayoutXAxisAnchor>,topAnchor : NSLayoutAnchor<NSLayoutYAxisAnchor>, leadingConstant: CGFloat, trailingConstant: CGFloat, topConstant: CGFloat, corner : CGFloat, widthAnchor: CGFloat,heightAnchor : CGFloat, textColor : UIColor){
        textField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
            textField.widthAnchor.constraint(equalToConstant: widthAnchor),
            textField.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
            textField.heightAnchor.constraint(equalToConstant: heightAnchor)
        
        ])
        textField.textColor = textColor
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = corner
        textField.layoutIfNeeded()
        
    }
    
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


