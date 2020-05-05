//
//  PembayaranViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 28/02/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class PembayaranViewController: UIViewController {
    let pembayaranView = UIView()
    let totalPembayaranView = UIView()
    let totalPemabayaranLabel = UILabel()
    let nilaiTotalPembayaranLabel = UILabel()
    let pilihMetodePembayaranLabel = UILabel()
    let virtualAccountLabel = UILabel()
    let virtualAccountView = UIView()
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        setupUI()
        setupNavBarPembayaran()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        rightButtonBCA.addTarget(self, action: #selector(nextButtonBcaAction(sender:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func nextButtonBcaAction (sender :Any){
        let bayarVC = storyboard?.instantiateViewController(identifier: "BayarViewController") as! BayarViewController
        self.navigationController?.pushViewController(bayarVC, animated: true)
        
    
    }

}
