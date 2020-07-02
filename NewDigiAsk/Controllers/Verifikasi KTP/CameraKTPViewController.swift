//
//  CameraKTPViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 04/06/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import AVFoundation

class CameraKTPViewController: UIViewController {
    let titleLabel = UILabel()
    let previewView = UIView()
    let captureImageView = UIImageView()
    let takePhotoButton = UIButton()
    let photoUlangButton = UIButton()
    let gunakanPhotoButton = UIButton()
    var captureSession: AVCaptureSession!
    var stillImageOutput: AVCapturePhotoOutput!
    var videoPreviewLayer: AVCaptureVideoPreviewLayer!
    var nomorKTP = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        setupUI()
        takePhotoButton.addTarget(self, action: #selector(takePhotoAction), for: .touchUpInside)
        photoUlangButton.addTarget(self, action: #selector(photoUlang), for: .touchUpInside)
        gunakanPhotoButton.addTarget(self, action: #selector(gunakanPhotoAction), for: .touchUpInside)
        print("Nomor KTP  : \(nomorKTP)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        captureSession = AVCaptureSession()
        captureSession.sessionPreset = .high
        
        guard let backCamera = AVCaptureDevice.default(for: AVMediaType.video)
            else {
                print("Unable to access back camera!")
                return
        }
        
        do {
            let input = try AVCaptureDeviceInput(device: backCamera)
            stillImageOutput = AVCapturePhotoOutput()
            if captureSession.canAddInput(input) && captureSession.canAddOutput(stillImageOutput) {
                captureSession.addInput(input)
                captureSession.addOutput(stillImageOutput)
                setupLivePreview()
            }
            //Step 9
        }
        catch let error  {
            print("Error Unable to initialize back camera:  \(error.localizedDescription)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.captureSession.stopRunning()
    }
    
    @objc func photoUlang(){
        gunakanPhotoButton.isHidden = true
        photoUlangButton.isHidden = true
        takePhotoButton.isHidden = false
        captureImageView.isHidden = true
    }
    
    @objc func gunakanPhotoAction(){
        let verifikasiKTP = storyboard?.instantiateViewController(identifier: "VerifikasiKTPViewController" ) as! VerifikasiKTPViewController
        verifikasiKTP.photoKTPImage.image = captureImageView.image
        verifikasiKTP.step = 1
        verifikasiKTP.nomorKTPTextField.text = nomorKTP
        navigationController?.pushViewController(verifikasiKTP, animated: true)
    }
    
    func setupLivePreview() {
        let height = self.view.frame.size.height
        let width = self.view.frame.size.width
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        videoPreviewLayer.videoGravity = .resizeAspectFill
        videoPreviewLayer.connection?.videoOrientation = .portrait
        videoPreviewLayer.frame = CGRect(x: 0, y: 0, width: width-20, height: (5/8)*width - 20)
        previewView.layer.addSublayer(videoPreviewLayer)
        
        //Step12
        DispatchQueue.global(qos: .userInitiated).async { //[weak self] in
            self.captureSession.startRunning()
            DispatchQueue.main.async {
                self.videoPreviewLayer.frame = self.previewView.bounds
            }
        }
        
    }
    
    
    
    
    
    func setupUI(){
        let height = self.view.frame.size.height
        let width = self.view.frame.size.width
        view.addSubview(titleLabel)
        UIHelper.makeLabel(label: titleLabel, corner: 0, allignment: .center, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 50, heightAnchor: 40, widthAnchor: 0)
        UIHelper.setTextLabel(label: titleLabel, fontName: fontNameHelper.AvantGardeITCbyBTDemi, fontColor: #colorLiteral(red: 0.1882352941, green: 0.2196078431, blue: 0.3725490196, alpha: 1), weight: .regular, fontSize: 14, text: "Pastikan informasi pada e-KTP dapat terbaca dengan jelas", kerning: 0.5)
        titleLabel.numberOfLines = 0
        
        view.addSubview(previewView)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        UIHelper.makeView(view: previewView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 10, trailingConstant: -10, topConstant: height/5 , corner: 10, heightAnchor: (5/8)*width - 20, widthAnchor: 0)
        previewView.layer.borderWidth = 1
        previewView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.addSubview(captureImageView)
        captureImageView.isHidden = true
        UIHelper.makeImageView(imageView: captureImageView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 10, topConstant: height/5, corner: 10, heightAnchor: (5/8)*width - 20)
        captureImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        captureImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        captureImageView.layer.borderWidth = 1
        captureImageView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        captureImageView.contentMode = .scaleAspectFill
        
        view.addSubview(takePhotoButton)
        takePhotoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            takePhotoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:  -50),
            takePhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            takePhotoButton.widthAnchor.constraint(equalToConstant: 60),
            takePhotoButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        takePhotoButton.layer.masksToBounds = true
        takePhotoButton.layer.cornerRadius = 30
        takePhotoButton.backgroundColor = .gray
        
        view.addSubview(photoUlangButton)
        photoUlangButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoUlangButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:  -50),
            photoUlangButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -((view.frame.size.width/2)+30)),
            photoUlangButton.widthAnchor.constraint(equalToConstant: view.frame.size.width/3),
            photoUlangButton.heightAnchor.constraint(equalToConstant: 48)
        ])
        photoUlangButton.layer.masksToBounds = true
        photoUlangButton.layer.cornerRadius = 24
        photoUlangButton.backgroundColor = .black
        photoUlangButton.setTitle("Foto Ulang", for: .normal)
        photoUlangButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        photoUlangButton.isHidden =  true
        photoUlangButton.titleLabel?.font = UIFont(name: fontNameHelper.ArialMT, size: 14)
        
        view.addSubview(gunakanPhotoButton)
        gunakanPhotoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gunakanPhotoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:  -50),
            gunakanPhotoButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: view.frame.size.width/2+30),
            gunakanPhotoButton.widthAnchor.constraint(equalToConstant: view.frame.size.width/3),
            gunakanPhotoButton.heightAnchor.constraint(equalToConstant: 48)
        ])
        gunakanPhotoButton.layer.masksToBounds = true
        gunakanPhotoButton.layer.cornerRadius = 24
        gunakanPhotoButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        gunakanPhotoButton.setTitle("Gunakan Foto", for: .normal)
        gunakanPhotoButton.titleLabel?.font = UIFont(name: fontNameHelper.ArialMT, size: 14)
        
        gunakanPhotoButton.isHidden = true
    }
    
    
    
}


extension CameraKTPViewController : AVCapturePhotoCaptureDelegate{
    @objc func takePhotoAction(){
        let settings = AVCapturePhotoSettings(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])
        stillImageOutput.capturePhoto(with: settings, delegate: self)
        photoUlangButton.isHidden = false
        gunakanPhotoButton.isHidden = false
        captureImageView.isHidden = false
        takePhotoButton.isHidden = true
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        
        guard let imageData = photo.fileDataRepresentation()
            else { return }
        
        let image = UIImage(data: imageData)
        let imgData = NSData(data: (image?.jpegData(compressionQuality: 1))!)
        var imageSize: Int = imageData.count
        print("size of image in KB: %f ", Double(imageSize) / 1000.0)
        captureImageView.image = image
        
    }
}
