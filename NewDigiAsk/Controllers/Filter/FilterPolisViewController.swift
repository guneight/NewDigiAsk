//
//  FilterPolisViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

class FilterPolisViewController: UIViewController {
    let filterBaseView = UIView()
    let swipeIndicator = UIView()
    let resetButton = UIButton()
    let underlineReset = UIView()
    let startDateLabel = UILabel()
    
    let startDateIconImage = UIImageView()
    let underlinestartDate = UIView()
    let endDateLabel = UILabel()
    
    let endDateIconImage = UIImageView()
    let underlineEndDate = UIView()
    let applyFilterButton = UIButton()
    var dateEdit : Date?
    let datePicker = UIDatePicker()
    var startDateTextField = UITextField()
    var endDateTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        showDatePicker()
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(dismiss))
        gesture.direction = .down
        
        resetButton.addTarget(self, action: #selector(resetDate(sender:)), for: .touchUpInside)
        applyFilterButton.addTarget(self, action: #selector(applyFilterAction(sender: )), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    
    @objc func dismissView() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func applyFilterAction(sender: UIButton){
        self.dismiss(animated: true, completion: nil)
        print("applyFilterAction")
    }
    
}
