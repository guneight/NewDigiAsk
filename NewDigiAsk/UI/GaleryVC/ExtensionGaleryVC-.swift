//
//  ExtensionGaleryVC-.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 17/03/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension GaleryViewController {
    func setupUIGalery(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(galeryScrollView)
        UIHelper.makeScroolView(scrollView: galeryScrollView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, widthAnchor: 0, scrollAble: true, scrollShow: false)
        galeryScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        galeryScrollView.layer.masksToBounds = true
        galeryScrollView.layer.cornerRadius = 20
        galeryScrollView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        galeryScrollView.addSubview(galeryView)
        galeryView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            galeryView.leadingAnchor.constraint(equalTo: galeryScrollView.leadingAnchor),
            galeryView.trailingAnchor.constraint(equalTo: galeryScrollView.trailingAnchor),
            galeryView.topAnchor.constraint(equalTo: galeryScrollView.topAnchor),
            galeryView.bottomAnchor.constraint(equalTo: galeryScrollView.bottomAnchor),
            galeryView.heightAnchor.constraint(equalToConstant: 1100),
            galeryView.widthAnchor.constraint(equalTo: galeryScrollView.widthAnchor)
            ])
        let heightConstraint = galeryView.heightAnchor.constraint(equalTo: galeryScrollView.heightAnchor)
        heightConstraint.priority = UILayoutPriority(rawValue: 250)
        heightConstraint.isActive = true
        galeryView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        galeryView.layer.masksToBounds = true
        galeryView.layer.cornerRadius = 20
        
        galeryView.addSubview(listGaleryTable)
        listGaleryTable.translatesAutoresizingMaskIntoConstraints = true
        NSLayoutConstraint.activate([
            listGaleryTable.leadingAnchor.constraint(equalTo: galeryView.leadingAnchor),
            listGaleryTable.trailingAnchor.constraint(equalTo: galeryView.trailingAnchor),
            listGaleryTable.topAnchor.constraint(equalTo: galeryView.topAnchor),
            listGaleryTable.bottomAnchor.constraint(equalTo: galeryView.bottomAnchor)
        ])
        
        
        
        
    }
    
    func setupNavBarGalery(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "GALERY", style: .plain, target: nil, action: nil)
        
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
        
    }
}
