//
//  ExtensionVerifikasiKTPVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 15/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension VerifikasiKTPViewController:  UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func ambilFotoKTP() {
        photoKTPImage.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewCamera))
        photoKTPImage.addGestureRecognizer(tapGesture)
        
       
    }
    
    @objc func viewCamera(){
        let cameraVC = storyboard?.instantiateViewController(identifier: "CameraKTPViewController") as! CameraKTPViewController
        cameraVC.nomorKTP = nomorKTPTextField.text ?? ""
        navigationController?.pushViewController(cameraVC, animated: true)
    }
    
    @objc func openCamera(gesture : UITapGestureRecognizer){
        let imgPicker = UIImagePickerController()
        imgPicker.delegate = self
        imgPicker.sourceType = .camera
        imgPicker.allowsEditing = false
        imgPicker.showsCameraControls = true
        self.present(imgPicker, animated: true, completion: nil)
         print("presss")
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey :
        Any]) {
        if let img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoKTPImage.image = resizeImage(image: img, newHeight: 192)
            photoKTPImage.contentMode = .center
            self.dismiss(animated: true, completion: nil)
        } else {
            print("error")
        }
    }
    
     func resizeImage(image: UIImage, newHeight: CGFloat) -> UIImage {
        let width = image.size.width
        let scale = newHeight / image.size.height
        let newHeight = image.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: width, height: newHeight))
        image.draw(in: CGRect(x: 0, y: 0, width: width, height: newHeight))
        guard let newImage = UIGraphicsGetImageFromCurrentImageContext()else {
            return image
        }
        UIGraphicsEndImageContext()
        return newImage
    }
    
    func setupUI(){
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        view.addSubview(verifikasiBaseView)
        UIHelper.makeView(view: verifikasiBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: view.frame.size.height, widthAnchor: 0)
        verifikasiBaseView.backgroundColor = #colorLiteral(red: 0.6549019608, green: 0.6980392157, blue: 0.8980392157, alpha: 0.72)
        
        verifikasiBaseView.addSubview(ktpView)
        UIHelper.makeView(view: ktpView, leadingAnchor: verifikasiBaseView.leadingAnchor, trailingAnchor: verifikasiBaseView.trailingAnchor, topAnchor: verifikasiBaseView.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 65, corner: 20, heightAnchor: verifikasiBaseView.frame.size.height-65, widthAnchor: 0)
        ktpView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        verifikasiBaseView.addSubview(verifikasiKtpSegmentControl)
        verifikasiKtpSegmentControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verifikasiKtpSegmentControl.leadingAnchor.constraint(equalTo: verifikasiBaseView.leadingAnchor, constant: 52),
            verifikasiKtpSegmentControl.trailingAnchor.constraint(equalTo: verifikasiBaseView.trailingAnchor, constant: -52),
            verifikasiKtpSegmentControl.topAnchor.constraint(equalTo: verifikasiBaseView.topAnchor, constant: 16),
            verifikasiKtpSegmentControl.heightAnchor.constraint(equalToConstant: 37)
        ])
        

         //segmented nomor KTP
        ktpView.addSubview(nomorKtpLabel)
        UIHelper.makeLabel(label: nomorKtpLabel, corner: 0, allignment: .left, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: ktpView.topAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 24, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKtpLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 15, text: "Nomor Identitas/KTP", kerning: 0.2)
        
        ktpView.addSubview(keteranganLabel)
        UIHelper.makeLabel(label: keteranganLabel, corner: 0, allignment: .left, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: nomorKtpLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 7, heightAnchor: 35, widthAnchor: 0)
        UIHelper.setTextLabel(label: keteranganLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 11, text: "masukkan nomor identitas/ktp yang masih berlaku. nomor ini sancta punting untuk verifikasi akun Anda.", kerning: 0.6)
        keteranganLabel.numberOfLines = 0
        
        ktpView.addSubview(nomorKTPheaderLabel)
        UIHelper.makeLabel(label: nomorKTPheaderLabel, corner: 0, allignment: .left, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: keteranganLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: nomorKTPheaderLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 10, text: "Nomor KTP", kerning: 0.5)
        

        ktpView.addSubview(nomorKTPTextField)
        UIHelper.makeTetxField(textField: nomorKTPTextField, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: nomorKTPheaderLabel.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, corner: 0, heightAnchor: 40, textColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1))
        UIHelper.setTextField(textField: nomorKTPTextField, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .bold, fontSize: 18, text: " ", kerning: 0.8)
        nomorKTPTextField.placeholder = "123456789900"
        let thickness: CGFloat = 1.0
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x:0, y: self.nomorKTPTextField.frame.size.height - thickness, width: self.nomorKTPTextField.frame.size.width, height:thickness)
        bottomBorder.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        nomorKTPTextField.layer.addSublayer(bottomBorder)
        nomorKTPTextField.keyboardType = .numberPad
        
        ktpView.addSubview(alertNomorKtpLabel)
        UIHelper.makeLabel(label: alertNomorKtpLabel, corner: 0, allignment: .right, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: nomorKTPTextField.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 5, heightAnchor: 14, widthAnchor: 0)
        UIHelper.setTextLabel(label: alertNomorKtpLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 12, text: "Nomor KTP yang dimasukkan salah", kerning: 0.5)
        
        alertNomorKtpLabel.isHidden = true
        panduanPhotoBaseView.isHidden = true
        panduanPhotoKTPLabel.isHidden = true
        keteranganPanduanPhoto.isHidden = true
        photoKTPImage.isHidden = true
        fotoBersamaKTPImage.isHidden = true
        fotoBersamaKtpLabel.isHidden = true
        ubahLabel.isHidden = true
        
        
        
        //segmented Photo KTP
        ktpView.addSubview(panduanPhotoBaseView)
        UIHelper.makeView(view: panduanPhotoBaseView, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: keteranganLabel.bottomAnchor, leadingConstant: 20, trailingConstant: -20, topConstant: 10, corner: 10, heightAnchor: 180, widthAnchor: 0)
        panduanPhotoBaseView.layer.borderColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        panduanPhotoBaseView.layer.borderWidth = 1
        

        panduanPhotoBaseView.addSubview(panduanPhotoKTPLabel)
        UIHelper.makeLabel(label: panduanPhotoKTPLabel, corner: 0, allignment: .center, leadingAnchor: panduanPhotoBaseView.leadingAnchor, trailingAnchor: panduanPhotoBaseView.trailingAnchor, topAnchor: panduanPhotoBaseView.topAnchor, leadingConstant: 10, trailingConstant: -10, topConstant: 10, heightAnchor: 18, widthAnchor: 0)
        UIHelper.setTextLabel(label: panduanPhotoKTPLabel, fontName: "AvantGardeITCbyBT-Demi", fontColor: #colorLiteral(red: 0.3333333333, green: 0.3333333333, blue: 0.3333333333, alpha: 1), weight: .regular, fontSize: 15, text: "Panduan Foto KTP", kerning: 0.2)

        panduanPhotoBaseView.addSubview(keteranganPanduanPhoto)
        UIHelper.makeLabel(label: keteranganPanduanPhoto, corner: 0, allignment: .center, leadingAnchor: panduanPhotoBaseView.leadingAnchor, trailingAnchor: panduanPhotoBaseView.trailingAnchor, topAnchor: panduanPhotoKTPLabel.bottomAnchor, leadingConstant: 10, trailingConstant: -10, topConstant: 7, heightAnchor: 55, widthAnchor: 0)
        UIHelper.setTextLabel(label: keteranganPanduanPhoto, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.4156862745, green: 0.3960784314, blue: 0.3960784314, alpha: 1), weight: .regular, fontSize: 11, text: "Pastikan seluruh bagian wajah dan KTP Anda breada dalam bingkai foto dan terlihat dengen jelas. Patikan foto yang Anda kirim adalah foto asli tanpa editan", kerning: 0.6)
        keteranganPanduanPhoto.numberOfLines = 0

        ktpView.addSubview(photoKTPImage)
        UIHelper.makeImageView(imageView: photoKTPImage, leadingAnchor: ktpView.leadingAnchor, topAnchor: keteranganPanduanPhoto.bottomAnchor, leadingConstant: 63, topConstant: 15, corner: 10, heightAnchor: 160)
        photoKTPImage.trailingAnchor.constraint(equalTo: ktpView.trailingAnchor, constant: -63).isActive = true
        photoKTPImage.contentMode = .scaleAspectFit
        photoKTPImage.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        photoKTPImage.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        photoKTPImage.contentMode = .scaleAspectFill
        
        //segmented periksa identitas
        
        ktpView.addSubview(fotoBersamaKtpLabel)
        UIHelper.makeLabel(label: fotoBersamaKtpLabel, corner: 0, allignment: .left, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: nomorKTPTextField.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 20, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: fotoBersamaKtpLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 10, text: "Foto bersama KTP", kerning: 0.5)
        
        ktpView.addSubview(fotoBersamaKTPImage)
        UIHelper.makeImageView(imageView: fotoBersamaKTPImage, leadingAnchor: ktpView.leadingAnchor, topAnchor: fotoBersamaKtpLabel.bottomAnchor, leadingConstant: 63, topConstant: 10, corner: 10, heightAnchor: 170)
        fotoBersamaKTPImage.trailingAnchor.constraint(equalTo: ktpView.trailingAnchor, constant: -63).isActive = true
        fotoBersamaKTPImage.layer.borderColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        fotoBersamaKTPImage.layer.borderWidth = 1
        fotoBersamaKTPImage.contentMode = .scaleAspectFill
        
        ktpView.addSubview(ubahLabel)
        UIHelper.makeLabel(label: ubahLabel, corner: 0, allignment: .center, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: fotoBersamaKTPImage.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 12, heightAnchor: 12, widthAnchor: 0)
        UIHelper.setTextLabel(label: ubahLabel, fontName: "AvantGardeITCbyBT-Book", fontColor: #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), weight: .regular, fontSize: 10, text: "Ubah", kerning: 0.5)
        ubahLabel.isUserInteractionEnabled = true
        
        
        
        
        ktpView.addSubview(selanjutnyaButton)
        UIHelper.makeButton(button: selanjutnyaButton, leadingAnchor: ktpView.leadingAnchor, trailingAnchor: ktpView.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: -48, corner: 24, heightAnchor: 48, widthAnchor: 0)
        selanjutnyaButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        selanjutnyaButton.setTitle("SELANJUTNYA", for: .normal)
        
    }
    
    func ubahLink(){
        let text = (ubahLabel.text)!
        let underliningString = NSMutableAttributedString(string: text)
        let ubah = (text as NSString).range(of: "Ubah")
        underliningString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: ubah)
        ubahLabel.attributedText = underliningString
    }
    
    func Segmented(Index : Int){
        print("Index yang dipilih = ", Index)
        if Index == 0{
            nomorKtpLabel.isHidden = false
            keteranganLabel.isHidden = false
            nomorKTPheaderLabel.isHidden = false
            nomorKTPTextField.isHidden = false
            panduanPhotoBaseView.isHidden = true
            panduanPhotoKTPLabel.isHidden = true
            keteranganPanduanPhoto.isHidden = true
            photoKTPImage.isHidden = true
            fotoBersamaKTPImage.isHidden = true
            fotoBersamaKtpLabel.isHidden = true
            ubahLabel.isHidden = true
        }else if Index == 1{
            nomorKtpLabel.text = "Foto Diri dengan kartu Identitas/KTP"
            keteranganLabel.isHidden = true
            nomorKTPheaderLabel.isHidden = true
            nomorKTPTextField.isHidden = true
            
            panduanPhotoBaseView.isHidden = false
            panduanPhotoKTPLabel.isHidden = false
            keteranganPanduanPhoto.isHidden = false
            photoKTPImage.isHidden = false
            
            fotoBersamaKTPImage.isHidden = true
            fotoBersamaKtpLabel.isHidden = true
            ubahLabel.isHidden = true
        }else if Index == 2{
            nomorKtpLabel.text = "Periksa kembali data Identitas"
            keteranganLabel.isHidden = false
            keteranganLabel.text = "Pastikan Nomor identitas dan foto yang akan Anda Upload suda benar dan tampas delas terlihat"
            nomorKTPheaderLabel.isHidden = false
            nomorKTPTextField.isHidden = false
            
            panduanPhotoBaseView.isHidden = true
            panduanPhotoKTPLabel.isHidden = true
            keteranganPanduanPhoto.isHidden = true
            photoKTPImage.isHidden = true
            
            fotoBersamaKTPImage.isHidden = false
            fotoBersamaKtpLabel.isHidden = false
            ubahLabel.isHidden = false
        }
    }
    
    
    func setupNavBarVerifikasiKTP(){
        let customButtonNav =  UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(backButtonTapped))
        self.navigationItem.leftBarButtonItem = customButtonNav
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1)
        let backItem = UIBarButtonItem()
        backItem.title = "VERIFIKASI KARTU IDENTITAS"
        let titleFont  = UIFont(name: "Arial-BoldMT", size: 12)
        backItem.setTitleTextAttributes([NSAttributedString.Key.font:titleFont!], for: .normal)
        navigationItem.leftBarButtonItems = [customButtonNav, backItem]
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}


class SegmentedController : UIControl{
    private var labels = [UILabel]()
    var thumbView = UIView()
    let line = UIView()

    var items = ["1","2","3"]{
        didSet{
            setupLabels()
        }
    }
    
    var selectedIndex : Int = 0 {
        didSet{
            
            displayNewSelectedIndex()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView(){
        let width = frame.width
        print(" Width ", width)
        line.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addSubview(line)
        layer.cornerRadius = frame.height/2
        
        backgroundColor = .clear
        setupLabels()
        insertSubview(thumbView, at: 0)
    }
    
    func setupLabels(){
        for label in labels {
            label.removeFromSuperview()
        }
        labels.removeAll(keepingCapacity: true)
        for index in 1...items.count{
            let label = UILabel(frame: CGRect.zero)
            label.text = items[index-1]
            label.textAlignment = .center
            label.layer.cornerRadius = 37/2
            self.addSubview(label)
            labels.append(label)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let labelHeight = self.bounds.height
        let labelWidth = self.bounds.width/CGFloat(labels.count)
        let xPosition = CGFloat(0) * labelWidth + labelWidth/3
        let lines  = line
        lines.frame = CGRect(x:labelWidth/3 , y: 37/2, width: labelWidth*2, height: 1)
        thumbView.frame = CGRect(x: xPosition, y: 0, width: 37, height: labelHeight)
        thumbView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        thumbView.layer.masksToBounds = true
        thumbView.layer.cornerRadius = 37/2

        for index in 0...labels.count-1{
            let label = labels[index]
            let xPosition = CGFloat(index) * labelWidth + labelWidth/3
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 37/2
            label.frame = CGRect(x: xPosition, y: 0, width: 37, height: labelHeight)
            if index == 0{
                label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
            }else{
                label.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            
        }
    }
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        let location = touch.location(in: self)
        var calculateIndex : Int?
        for (index, item) in labels.enumerated() {
            if item.frame.contains(location){
                calculateIndex = index
            }
            
        }
        
        if calculateIndex != nil {
            selectedIndex = calculateIndex!
            sendActions(for: .valueChanged)
        }
        print( "false")
        return false
    }
    
    func displayNewSelectedIndex(){
        let controller = VerifikasiKTPViewController()
        var label = labels[selectedIndex]
        self.thumbView.frame = label.frame
        print("selectedIndex", selectedIndex)
       
        controller.Segmented(Index: selectedIndex)
        
        for index in 0...labels.count-1{
            if index == selectedIndex{
                var label = labels[selectedIndex]
                label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                label.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                
            
            }else{
                var label = labels[index]
                label.textColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }
     
        }
    }
    
}
