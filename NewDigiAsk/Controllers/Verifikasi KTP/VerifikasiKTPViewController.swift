//
//  VerifikasiKTPViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 15/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import AVFoundation
class VerifikasiKTPViewController: UIViewController {
    let verifikasiBaseView = UIView()
    let ktpView = UIView()
    let selanjutnyaButton = UIButton()
    let nomorKtpLabel = UILabel()
    let keteranganLabel = UILabel()
    let nomorKTPheaderLabel = UILabel()
    let nomorKTPTextField = UITextField()
    var nomorKTPTextFieldText : Int?
    let alertNomorKtpLabel = UILabel()
    
    let panduanPhotoBaseView = UIView()
    let panduanPhotoKTPLabel = UILabel()
    let keteranganPanduanPhoto = UILabel()
    let photoKTPImage = UIImageView()
    
    let fotoBersamaKtpLabel = UILabel()
    let fotoBersamaKTPImage = UIImageView()
    let ubahLabel = UILabel()
    
    let verifikasiKtpSegmentControl : UIView = {
        let segmented = SegmentedController()
        return segmented
    }()
    let lineSegmented = UIView()
    var step = 0
    var nomorKtp = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupNavBarVerifikasiKTP()
        selanjutnya()
        ubahLink()
        ambilFotoKTP()
        alertNomorKTP()
        checkStep()
        self.view.endEditing(true)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    
    func selanjutnya (){
        selanjutnyaButton.addTarget(self, action: #selector(selanjutnyaAction), for: .touchUpInside)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(UbahAction))
        ubahLabel.addGestureRecognizer(tapGesture)
    }
    
    func alertNomorKTP(){
        nomorKTPTextField.addTarget(self, action: #selector(checkNomorKTP), for: .editingChanged)
    }
    
    // MARK: - Selanjutnya
    
    func checkStep(){
        if step == 1{
            nomorKtpLabel.text = "Foto Diri dengan kartu Identitas/KTP"
            keteranganLabel.isHidden = true
            nomorKTPheaderLabel.isHidden = true
            nomorKTPTextField.isHidden = true
            nomorKTPTextField.text = nomorKtp
            panduanPhotoBaseView.isHidden = false
            panduanPhotoKTPLabel.isHidden = false
            keteranganPanduanPhoto.isHidden = false
            photoKTPImage.isHidden = false
            fotoBersamaKTPImage.isHidden = true
            fotoBersamaKtpLabel.isHidden = true
            ubahLabel.isHidden = true
            selanjutnyaButton.isEnabled = true
        }
    }
    
    @objc func selanjutnyaAction(sender: UIButton){
        if step == 0 {
            
            if nomorKTPTextField.text!.count == 16 {
                nomorKTPTextFieldText = nomorKTPTextField.text?.count
                step += 1
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
                selanjutnyaButton.isEnabled = false
                
            }else {
                let alertNomorKTP = UIAlertController(title: "Nomor KTP tidak sesuai ", message: "Mohon masukkan nomor KTP Anda", preferredStyle: .alert)
                alertNomorKTP.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alertNomorKTP, animated: true)
            }
        }else if step == 1{
            step += 1
            nomorKtpLabel.text = "Periksa kembali data Identitas"
            keteranganLabel.isHidden = false
            keteranganLabel.text = "Pastikan Nomor identitas dan foto yang akan Anda Upload suda benar dan tampas delas terlihat"
            nomorKTPheaderLabel.isHidden = false
            nomorKTPTextField.isHidden = false
            nomorKTPTextField.isEnabled = false
            
            panduanPhotoBaseView.isHidden = true
            panduanPhotoKTPLabel.isHidden = true
            keteranganPanduanPhoto.isHidden = true
            photoKTPImage.isHidden = true
            
            fotoBersamaKTPImage.isHidden = false
            fotoBersamaKtpLabel.isHidden = false
            fotoBersamaKTPImage.image = photoKTPImage.image
            ubahLabel.isHidden = false
            selanjutnyaButton.setTitle("VERIFIKASI", for: .normal )
            
            
        }else if step == 2 {
            step = 0
            let editProfile = storyboard?.instantiateViewController(identifier: "EditProfileViewController") as! EditProfileViewController
            editProfile.nomorIdentitas = nomorKTPTextField.text ?? ""
            
            navigationController?.pushViewController(editProfile, animated: true)
            
        }
    }
    
    @objc func UbahAction(){
        step = 0
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
        selanjutnyaButton.setTitle("SELANJUTNYA", for: .normal )
        nomorKTPTextField.isEnabled = true
    }
    
    @objc func checkNomorKTP(){
        if nomorKTPTextField.text?.isNomorKTP == true {
            alertNomorKtpLabel.isHidden = true
        }else if nomorKTPTextField.text!.count == 0{
            alertNomorKtpLabel.isHidden = true
        }else if nomorKTPTextField.text?.isStrings == false{
            alertNomorKtpLabel.isHidden = false
        }
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
