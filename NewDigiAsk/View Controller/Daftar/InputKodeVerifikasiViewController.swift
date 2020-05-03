//
//  InputKodeVerifikasiViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 20/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import PinCodeTextField
class InputKodeVerifikasiViewController: UIViewController {
    let viewKodeVerifikasi = UIView()
    let imageIconVerifikasi = UIImageView()
    let labelMasukkanKode = UILabel()
    let labelKodeVerikasiDikirim = UILabel()
    let buttonverifikasi = UIButton()
    let labelMohonTunggu = UILabel()
    let labelTidakMenerimaKode = UILabel()
    let labelKirimUlang = UILabel()
    
    @IBOutlet weak var kodeVerifikasi: PinCodeTextField!
    
    var loginStatus : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        setupUi()
        let labelTapGesture = UITapGestureRecognizer(target: self, action: #selector(tapLabel(gesture:)))
        labelKirimUlang.addGestureRecognizer(labelTapGesture)
        labelKirimUlang.isUserInteractionEnabled = true
        
        buttonverifikasi.addTarget(self, action: #selector(verifikasiAction(sender:)), for: .touchUpInside)

        view.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }
    

    func setupUi(){
        kodeVerifikasi.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kodeVerifikasi.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            kodeVerifikasi.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            kodeVerifikasi.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            kodeVerifikasi.heightAnchor.constraint(equalToConstant: view.frame.size.height*0.5)
        ])
        self.view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        kodeVerifikasi.layer.masksToBounds = true
        kodeVerifikasi.layer.cornerRadius = 20
        kodeVerifikasi.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner ]
        kodeVerifikasi.backgroundColor = .white
        kodeVerifikasi.layoutIfNeeded()
        
        kodeVerifikasi.addSubview(imageIconVerifikasi)
        imageIconVerifikasi.translatesAutoresizingMaskIntoConstraints = false
        imageIconVerifikasi.heightAnchor.constraint(equalToConstant: 66).isActive = true
        imageIconVerifikasi.widthAnchor.constraint(equalToConstant: 48).isActive = true
        imageIconVerifikasi.topAnchor.constraint(equalTo: kodeVerifikasi.topAnchor, constant:45).isActive = true
        imageIconVerifikasi.centerXAnchor.constraint(equalTo: kodeVerifikasi.centerXAnchor).isActive = true
        imageIconVerifikasi.image = UIImage(named: "smsIcon")
        
        kodeVerifikasi.addSubview(labelMasukkanKode)
        UIHelper.makeLabel(label: labelMasukkanKode, corner: 0, allignment: .center, leadingAnchor: kodeVerifikasi.leadingAnchor, trailingAnchor: kodeVerifikasi.trailingAnchor, topAnchor: imageIconVerifikasi.bottomAnchor, leadingConstant: 99, trailingConstant: -99, topConstant: 12, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: labelMasukkanKode, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 15, text: "Masukkan kode verifikasi", kerning: 0.75)
       
        
        kodeVerifikasi.addSubview(labelKodeVerikasiDikirim)
        UIHelper.makeLabel(label: labelKodeVerikasiDikirim, corner: 0, allignment: .center, leadingAnchor: kodeVerifikasi.leadingAnchor, trailingAnchor: kodeVerifikasi.trailingAnchor, topAnchor: labelMasukkanKode.bottomAnchor, leadingConstant: 80, trailingConstant: -80, topConstant: 10, heightAnchor: 36, widthAnchor: 0)
        
        labelKodeVerikasiDikirim.text = "Kode verifikasi telah dikirimkan melalui WhatsApp ke nomor 1234567890"
        labelKodeVerikasiDikirim.font = UIFont(name:"AvantGarde Bk BT", size:12)
        labelKodeVerikasiDikirim.textColor = #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1)
        labelKodeVerikasiDikirim.numberOfLines = 2
        
        kodeVerifikasi.addSubview(buttonverifikasi)
        UIHelper.makeButton(button: buttonverifikasi, leadingAnchor: kodeVerifikasi.leadingAnchor, trailingAnchor: kodeVerifikasi.trailingAnchor, topAnchor: labelKodeVerikasiDikirim.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: kodeVerifikasi.frame.size.height*0.2, corner: 24, heightAnchor: 48, widthAnchor: 0)
        
        buttonverifikasi.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        buttonverifikasi.setTitle("VERIFIKASI", for: .normal)
        buttonverifikasi.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(viewKodeVerifikasi)
        UIHelper.makeView(view: viewKodeVerifikasi, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: kodeVerifikasi.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 0, heightAnchor: view.frame.size.height*0.5, widthAnchor: 0)
        viewKodeVerifikasi.backgroundColor  = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        kodeVerifikasi.addSubview(labelMohonTunggu)
        UIHelper.makeLabel(label: labelMohonTunggu, corner: 0, allignment: .center, leadingAnchor: kodeVerifikasi.leadingAnchor, trailingAnchor: kodeVerifikasi.trailingAnchor, topAnchor: buttonverifikasi.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 30, heightAnchor: 40, widthAnchor: 0)
        labelMohonTunggu.text = "Mohon tunggu dalam 30 detik untuk kirim ulang"
        labelMohonTunggu.numberOfLines = 2
        labelMohonTunggu.font = UIFont(name:"AvantGarde Bk BT", size:12)
        
        kodeVerifikasi.addSubview(labelTidakMenerimaKode)
        UIHelper.makeLabel(label: labelTidakMenerimaKode, corner: 0, allignment: .center, leadingAnchor: kodeVerifikasi.leadingAnchor, trailingAnchor: kodeVerifikasi.trailingAnchor, topAnchor: labelMohonTunggu.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, heightAnchor: 18, widthAnchor: 0)
        labelTidakMenerimaKode.text = "Tidak menerima kode ?"
        labelTidakMenerimaKode.font = UIFont(name:"AvantGarde Bk BT", size:12)
        kodeVerifikasi.addSubview(labelKirimUlang)
        UIHelper.makeLabel(label: labelKirimUlang, corner: 0, allignment: .center, leadingAnchor: kodeVerifikasi.leadingAnchor, trailingAnchor: kodeVerifikasi.trailingAnchor, topAnchor: labelTidakMenerimaKode.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, heightAnchor: 30, widthAnchor: 0)
        labelKirimUlang.font = UIFont(name:"AvantGarde Bk BT", size:12)
        labelKirimUlang.text = " Kirim Ulang atau Gunanakan Metode Lain"
        
//        label with link
        let text = (labelKirimUlang.text)!
        let underliningString = NSMutableAttributedString(string: text)
        let kirimUlang = (text as NSString).range(of: "Kirim Ulang")
        underliningString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: kirimUlang)
        
        let gunakanMetodeLain =  (text as NSString).range(of: "Gunanakan Metode Lain")
        underliningString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: gunakanMetodeLain)
        labelKirimUlang.attributedText = underliningString

    }
    
    func setupNavBar(){
           let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
                 self.navigationItem.leftBarButtonItem = customButtonNav
            navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            UINavigationBar.appearance().isTranslucent = false
            navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "VERIFIKASI", style: .plain, target: nil, action: nil)
                 
       }
       
    @objc func backButtonTapped() {
                   navigationController?.popToRootViewController(animated: true)
                 }
       
    @objc func tapLabel(gesture : UITapGestureRecognizer){
        let text = (labelKirimUlang.text)!
        let kirimUlangRange = (text as NSString).range(of: "Kirim Ulang")
        let gunakanMetodeLain = (text as NSString).range(of: "Gunakan Metode Lain")
        if gesture.didTapAttributedTextInLabel(label: labelKirimUlang, inRange: kirimUlangRange){
            print("Kirim ulang")
        }else if gesture.didTapAttributedTextInLabel(label: labelKirimUlang, inRange: gunakanMetodeLain){
            print("Gunakan Metode Lain")
        }else {
            print("Tapped none")
        }
    }
    
    @objc func verifikasiAction(sender : Any){
//        let kode = kodeVerifikasi.text
//        if kode != "" {
            let lengkapiDataVC = self.storyboard?.instantiateViewController(identifier: "LengkapiDataViewController")  as! LengkapiDataViewController
            self.navigationController?.pushViewController(lengkapiDataVC, animated: true)
        print("presss")
//        }
        
    }

}

extension UITapGestureRecognizer{
    
    func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
        // Create instances of NSLayoutManager, NSTextContainer and NSTextStorage
        let layoutManager = NSLayoutManager()
        let textContainer = NSTextContainer(size: CGSize.zero)
        let textStorage = NSTextStorage(attributedString: label.attributedText!)

        // Configure layoutManager and textStorage
        layoutManager.addTextContainer(textContainer)
        textStorage.addLayoutManager(layoutManager)

        // Configure textContainer
        textContainer.lineFragmentPadding = 0.0
        textContainer.lineBreakMode = label.lineBreakMode
        textContainer.maximumNumberOfLines = label.numberOfLines
        let labelSize = label.bounds.size
        textContainer.size = labelSize

        // Find the tapped character location and compare it to the specified range
        let locationOfTouchInLabel = self.location(in: label)
        let textBoundingBox = layoutManager.usedRect(for: textContainer)
        let textContainerOffset = CGPoint(x: (labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x,
                                          y: (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y);
        let locationOfTouchInTextContainer = CGPoint(x: locationOfTouchInLabel.x - textContainerOffset.x,
                                                     y: locationOfTouchInLabel.y - textContainerOffset.y);
        let indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)

        return NSLocationInRange(indexOfCharacter, targetRange)
    }
}
