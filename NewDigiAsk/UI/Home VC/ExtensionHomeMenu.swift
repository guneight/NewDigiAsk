//
//  ExtensionUISetup.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 18/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension HomeMenuViewController{
    
    func UiSetup(){
        let height = view.frame.size.height
        let width = view.frame.size.width
        print("This is weight :\(width)")
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        self.view.addSubview(scrollView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            //            scrollView.heightAnchor.constraint(equalToConstant: 1282),
        ])
        
        scrollView.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        scrollView.isScrollEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        
        scrollView.addSubview(baseView)
        baseView.translatesAutoresizingMaskIntoConstraints = false
        if width > 414 {
            baseView.heightAnchor.constraint(equalToConstant: height*2.2 ).isActive = true
        }else{
            baseView.heightAnchor.constraint(equalToConstant: 1282).isActive = true
        }
        
        NSLayoutConstraint.activate([
            baseView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            baseView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            baseView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            baseView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            baseView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        let heightConstraint = baseView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        baseView.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        
        let widthView = baseView.frame.size.width
        print("baseview height = \(widthView)")
        
        
        baseView.addSubview(containerViewNav)
        containerViewNav.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerViewNav.leadingAnchor.constraint(equalTo: baseView.leadingAnchor),
            containerViewNav.trailingAnchor.constraint(equalTo: baseView.trailingAnchor),
            containerViewNav.topAnchor.constraint(equalTo: baseView.topAnchor, constant:10),
            containerViewNav.heightAnchor.constraint(equalToConstant: 32.93)
        ])
        //logo digiask
        containerViewNav.addSubview(logoImageView)
        logoImageView.image = UIImage(named: "logoImage.png")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImageView.leadingAnchor.constraint(equalTo: containerViewNav.leadingAnchor,  constant:19),
            logoImageView.topAnchor.constraint(equalTo: containerViewNav.topAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 32.93),
            logoImageView.widthAnchor.constraint(equalToConstant: 92.65)
        ])
        containerViewNav.layoutIfNeeded()
        
        //cartButton
        containerViewNav.addSubview(cartButton)
        cartButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartButton.leadingAnchor.constraint(equalTo: containerViewNav.trailingAnchor, constant : -37.11),
            cartButton.topAnchor.constraint(equalTo: containerViewNav.topAnchor, constant:5),
            //            cartButton.widthAnchor.constraint(equalToConstant: 17),
            cartButton.heightAnchor.constraint(equalToConstant: 16.57)
        ])
        cartButton.setImage(UIImage(named: "cart.png"), for: .normal)
        
        //cart label
        let cartLabel = UILabel()
        containerViewNav.addSubview(cartLabel)
        cartLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cartLabel.trailingAnchor.constraint(equalTo: containerViewNav.trailingAnchor, constant : -10),
            cartLabel.topAnchor.constraint(equalTo: containerViewNav.topAnchor, constant:0),
            cartLabel.widthAnchor.constraint(equalToConstant: 14),
            cartLabel.heightAnchor.constraint(equalToConstant: 14)
        ])
        cartLabel.layer.masksToBounds = true
        cartLabel.layer.cornerRadius = 7
        cartLabel.textAlignment = .center
        UIHelper.setTextLabel(label: cartLabel, fontName: fontNameHelper.ArialBoldMT, fontColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), weight: .regular, fontSize: 10, text: "1", kerning: 0)
        cartLabel.backgroundColor = #colorLiteral(red: 1, green: 0.2039215686, blue: 0.01176470588, alpha: 1)
        
        //chatButton
        containerViewNav.addSubview(chatButton)
        chatButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chatButton.trailingAnchor.constraint(equalTo: cartButton.leadingAnchor, constant : -20.11),
            chatButton.topAnchor.constraint(equalTo: containerViewNav.topAnchor, constant:5),
            //            chatButton.widthAnchor.constraint(equalToConstant: 17),
            chatButton.heightAnchor.constraint(equalToConstant: 16.25)
        ])
        chatButton.setImage(UIImage(named: "hubungikami.png"), for: .normal)
        
        //chatButton
        containerViewNav.addSubview(notifButton)
        notifButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            notifButton.trailingAnchor.constraint(equalTo: chatButton.leadingAnchor, constant : -20.11),
            notifButton.topAnchor.constraint(equalTo: containerViewNav.topAnchor, constant:5),
            //            notifButton.widthAnchor.constraint(equalToConstant: 17),
            notifButton.heightAnchor.constraint(equalToConstant: 16.55)
        ])
        notifButton.setImage(UIImage(named: "notif.png"), for: .normal)
        
        //NotifCount
        let labelNotif = UILabel()
        containerViewNav.addSubview(labelNotif)
        labelNotif.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelNotif.leadingAnchor.constraint(equalTo: notifButton.trailingAnchor, constant : -10),
            labelNotif.topAnchor.constraint(equalTo: containerViewNav.topAnchor, constant:0),
            labelNotif.widthAnchor.constraint(equalToConstant: 14),
            labelNotif.heightAnchor.constraint(equalToConstant: 14)
        ])
        UIHelper.makeLabel(label: labelNotif, corner: 7, allignment: .center, leadingAnchor: containerViewNav.leadingAnchor, trailingAnchor: containerViewNav.trailingAnchor, topAnchor: containerViewNav.topAnchor, leadingConstant: (containerViewNav.frame.size.width-100), trailingConstant: -86, topConstant: 0, heightAnchor: 14, widthAnchor: 14)
        labelNotif.layer.masksToBounds = true
        labelNotif.layer.cornerRadius = 7
        labelNotif.backgroundColor = #colorLiteral(red: 1, green: 0.2039215686, blue: 0.01176470588, alpha: 1)
        labelNotif.text = "1"
        labelNotif.font = UIFont(name: fontNameHelper.ArialBoldMT, size: 10)
        labelNotif.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        //
        view.addSubview(backcontainerView)
        backcontainerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backcontainerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            backcontainerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            backcontainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backcontainerView.heightAnchor.constraint(equalToConstant: 100)
        ])
        backcontainerView.backgroundColor = .clear
        backcontainerView.layoutIfNeeded()
        
        
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 70)
        ])
        //        containerView.layer.borderWidth = 1
        //        containerView.layer.borderColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
        containerView.backgroundColor = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
        
        containerView.addSubview(tabBarView)
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tabBarView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            tabBarView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            tabBarView.topAnchor.constraint(equalTo: backcontainerView.topAnchor),
            tabBarView.heightAnchor.constraint(equalToConstant: 80.2)
        ])
        tabBarView.backgroundColor = .clear
        tabBarView.layoutIfNeeded()
        
        tabBarView.addSubview(imageBarView)
        imageBarView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageBarView.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor),
            imageBarView.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor),
            imageBarView.topAnchor.constraint(equalTo: tabBarView.topAnchor),
            imageBarView.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor, constant: -10)
        ])
        imageBarView.image = UIImage(named: "bar.png")
        imageBarView.layoutIfNeeded()
        
        tabBarView.addSubview(homeButton)
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homeButton.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor, constant: -((widthView-(4*48+54))/5)/2),
            homeButton.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor),
            homeButton.heightAnchor.constraint(equalToConstant: 49),
            homeButton.widthAnchor.constraint(equalToConstant: 48)
        ])
        homeButton.setImage(UIImage(named: "digiaskIcon.png"), for: .normal)
        homeButton.layoutIfNeeded()
        
        tabBarView.addSubview(klaimButton)
        klaimButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            klaimButton.leadingAnchor.constraint(equalTo: homeButton.trailingAnchor, constant: ((view.frame.size.width-(5*48))/4-15)),
            klaimButton.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor),
            klaimButton.heightAnchor.constraint(equalToConstant: 49),
            klaimButton.widthAnchor.constraint(equalToConstant: 48)
        ])
        print("leading Anchor = \((widthView-(5*48))/4))")
        klaimButton.setImage(UIImage(named: "klaimNormal.png"), for: .normal)
        klaimButton.layoutIfNeeded()
        
        tabBarView.addSubview(beliButton)
        beliButton.translatesAutoresizingMaskIntoConstraints = false
        beliButton.centerXAnchor.constraint(equalTo: tabBarView.centerXAnchor).isActive = true
        NSLayoutConstraint.activate([
            
            beliButton.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor, constant:-18.2),
            beliButton.heightAnchor.constraint(equalToConstant: 54),
            beliButton.widthAnchor.constraint(equalToConstant: 54)
        ])
        beliButton.setImage(UIImage(named: "beliIcon.png"), for: .normal)
        beliButton.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        beliButton.layer.cornerRadius = 54/2
        beliButton.clipsToBounds = true
        
        tabBarView.addSubview(profileButton)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileButton.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor, constant: ((widthView-(4*48+54))/5)/2),
            profileButton.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor),
            profileButton.heightAnchor.constraint(equalToConstant: 49),
            profileButton.widthAnchor.constraint(equalToConstant: 48)
        ])
        profileButton.setImage(UIImage(named: "profileNormal.png"), for: .normal)
        
        
        tabBarView.addSubview(simulasiButton)
        simulasiButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            simulasiButton.trailingAnchor.constraint(equalTo: profileButton.leadingAnchor, constant: -((view.frame.size.width-(5*48))/4-15)),
            simulasiButton.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor),
            simulasiButton.heightAnchor.constraint(equalToConstant: 49),
            simulasiButton.widthAnchor.constraint(equalToConstant: 48)
        ])
        simulasiButton.setImage(UIImage(named: "simulasiNormal"), for: .normal)
        
    }
    
}


