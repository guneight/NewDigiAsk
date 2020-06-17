//
//  PembayaranViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PembayaranViewController: UIViewController {
    let produkBaseView = UIView()
    let prosesStackView : UIStackView = {
        let stackViewCV = UIStackView()
        stackViewCV.axis = NSLayoutConstraint.Axis.horizontal
        stackViewCV.distribution = UIStackView.Distribution.fillEqually
        stackViewCV.alignment = UIStackView.Alignment.center
        stackViewCV.backgroundColor = #colorLiteral(red: 0.2131774127, green: 0.6528760791, blue: 1, alpha: 1)
        stackViewCV.translatesAutoresizingMaskIntoConstraints = false
        stackViewCV.spacing = 30
        return stackViewCV
    }()
    let lineView = UIView()
    let viewContainerTableProduk = UIView()
    let produkTable = UITableView()
    let produkImage = UIImageView()
    let tertanggungImage = UIImageView()
    let kerangjangImage = UIImageView()
    let checkOutImage = UIImageView()
    let completeImage = UIImageView()
    let pembayaranView = UIView()
    let totalPembayaranView = UIView()
    let totalPemabayaranLabel = UILabel()
    let nilaiTotalPembayaranLabel = UILabel()
    let pilihMetodePembayaranLabel = UILabel()
    let virtualAccountLabel = UILabel()
    let virtualAccountView = UIView()
    let bcaView = UIView()
    let mandiriView = UIView()
    let bniView = UIView()
    let iconBCAimage = UIImageView()
    let iconMandiriImage = UIImageView()
    let iconBNIImage = UIImageView()
    let virtualAccountBCALabel = UILabel()
    let virtualAccountMandiriLabel = UILabel()
    let virtualAccountBNILabel = UILabel()
    let rightButtonBCA = UIButton()
    let rightButtonMandiri = UIButton()
    let rightButtonBNI = UIButton()
    let KartuKreditLabel = UILabel()
    let kartuKreditView = UIView()
    let iconKartuKreditImage = UIImageView()
    let nomorkartuKreditLabel = UILabel()
    let rightButtonKartuKredit = UIButton()
    let uangElektronikLabel = UILabel()
    let uangElektronikView = UIView()
    let iconOVOImage = UIImageView()
    let iconGopayImage = UIImageView()
    let iconLinAjaImage = UIImageView()
    let ovoLabel = UILabel()
    let gopayLabel = UILabel()
    let linkAjaLabel = UILabel()
    let rigthButtonOVO = UIButton()
    let rigthButtonGopay = UIButton()
    let rigthButtonLinkAja = UIButton()
    let ovoBaseView = UIView()
    let gopayBaseView = UIView()
    let linkAjaBaseView = UIView()
    
    let metodebayarSelected : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        setupUI()
        setupNavBarPembayaran()
        kartuKredit()
        virtualAccountAction()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        
        // Do any additional setup after loading the view.
    }
    
    func virtualAccountAction(){
        rightButtonBCA.addTarget(self, action: #selector(nextButtonBcaAction(sender:)), for: .touchUpInside)
        rightButtonBNI.addTarget(self, action: #selector(nextButtonBcaAction(sender:)), for: .touchUpInside)
        rightButtonMandiri.addTarget(self, action: #selector(nextButtonBcaAction(sender:)), for: .touchUpInside)
        
        let tapGestureBCA = UITapGestureRecognizer(target: self, action: #selector(nextButtonBcaAction(sender:)))
        bcaView.addGestureRecognizer(tapGestureBCA)
        let tapGestureMandiri = UITapGestureRecognizer(target: self, action: #selector(nextButtonMandiriAction(sender:)))
        mandiriView.addGestureRecognizer(tapGestureMandiri)
        let tapGestureBNI = UITapGestureRecognizer(target: self, action: #selector(nextButtonBNIAction(sender:)))
        bniView.addGestureRecognizer(tapGestureBNI)
    }
    
    
    @objc func nextButtonBcaAction (sender :Any){
        let bayarVC = storyboard?.instantiateViewController(identifier: "BayarViewController") as! BayarViewController
        bayarVC.metodePembayaranText = "BCA Virtual Account"
        bayarVC.iconImage = "bca"
        self.navigationController?.pushViewController(bayarVC, animated: true)
    }
    
    @objc func nextButtonMandiriAction (sender :Any){
        let bayarVC = storyboard?.instantiateViewController(identifier: "BayarViewController") as! BayarViewController
        bayarVC.metodePembayaranText = "Mandiri Virtual Account"
        bayarVC.iconImage = "mandiri"
        self.navigationController?.pushViewController(bayarVC, animated: true)
    }
    
    @objc func nextButtonBNIAction (sender :Any){
        let bayarVC = storyboard?.instantiateViewController(identifier: "BayarViewController") as! BayarViewController
        bayarVC.metodePembayaranText = "BNI Virtual Account"
        bayarVC.iconImage = "bni"
        self.navigationController?.pushViewController(bayarVC, animated: true)
    }
    
    func kartuKredit(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(kartuKreditAction))
        kartuKreditView.addGestureRecognizer(tapGesture)
        rightButtonKartuKredit.addTarget(self, action: #selector(kartuKreditAction), for: .touchUpInside)
    }
    
    @objc func kartuKreditAction(){
        let bayarKartuKreditVC = storyboard?.instantiateViewController(identifier: "BayarKartuKreditViewController") as! BayarKartuKreditViewController
        self.navigationController?.pushViewController(bayarKartuKreditVC, animated: true)
    }
    
    
    @objc func ewalletOvoatAction(sender : Any){
        let pembayaranEwalletVC = storyboard?.instantiateViewController(identifier: "PembayaranEwalletViewController") as! PembayaranEwalletViewController
        pembayaranEwalletVC.ewalletSelected = 0
        self.navigationController?.pushViewController(pembayaranEwalletVC, animated: true)
    }
    
    @objc func ewalletGopayatAction(sender : Any){
        let pembayaranEwalletVC = storyboard?.instantiateViewController(identifier: "PembayaranEwalletViewController") as! PembayaranEwalletViewController
        pembayaranEwalletVC.ewalletSelected = 1
        self.navigationController?.pushViewController(pembayaranEwalletVC, animated: true)
    }
    
    @objc func ewalletLinkAjaatAction(sender : Any){
        let pembayaranEwalletVC = storyboard?.instantiateViewController(identifier: "PembayaranEwalletViewController") as! PembayaranEwalletViewController
        pembayaranEwalletVC.ewalletSelected = 2
        self.navigationController?.pushViewController(pembayaranEwalletVC, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let location = touch.location(in: ovoBaseView)
            if ovoBaseView.frame.contains(location) {
                let ovoTapGesture = UITapGestureRecognizer(target: self, action: #selector(ewalletOvoatAction))
                ovoBaseView.addGestureRecognizer(ovoTapGesture)
                rigthButtonOVO.addTarget(self, action: #selector(ewalletOvoatAction), for: .touchUpInside)
            }else if gopayBaseView.frame.contains(location){
                let gopayTapGesture = UITapGestureRecognizer(target: self, action: #selector(ewalletGopayatAction(sender:)))
                gopayBaseView.addGestureRecognizer(gopayTapGesture)
                rigthButtonGopay.addTarget(self, action: #selector(ewalletGopayatAction(sender:)), for: .touchUpInside)
            }else if  linkAjaBaseView.frame.contains(location){
                let linkAjaTapGesture = UITapGestureRecognizer(target: self, action: #selector(ewalletLinkAjaatAction(sender:)))
                linkAjaBaseView.addGestureRecognizer(linkAjaTapGesture)
                rigthButtonLinkAja.addTarget(self, action: #selector(ewalletLinkAjaatAction(sender:)), for: .touchUpInside)
            }
        }
    }
    
    
    
}

