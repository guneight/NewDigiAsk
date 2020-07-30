//
//  ExtensionFilterPolisVC.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 26/04/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit

extension FilterPolisViewController{
    func setupUI(){
      
        view.backgroundColor = .clear
        
        view.addSubview(filterBaseView)
        UIHelper.makeView(view: filterBaseView, leadingAnchor: view.safeAreaLayoutGuide.leadingAnchor, trailingAnchor: view.safeAreaLayoutGuide.trailingAnchor, topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 0, corner: 20, heightAnchor: 0, widthAnchor: 0)
        filterBaseView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        filterBaseView.backgroundColor = .white
        
        filterBaseView.addSubview(swipeIndicator)
        UIHelper.makeView(view: swipeIndicator, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: filterBaseView.topAnchor, leadingConstant: filterBaseView.frame.size.width*0.4, trailingConstant: -(filterBaseView.frame.size.width*0.4), topConstant: 5, corner: 2, heightAnchor: 4, widthAnchor: 0)
        swipeIndicator.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        filterBaseView.addSubview(resetButton)
        UIHelper.makeButton(button: resetButton, leadingAnchor: filterBaseView.trailingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: filterBaseView.topAnchor, leadingConstant: -90, trailingConstant: -40, topConstant: 32, corner: 0, heightAnchor: 15, widthAnchor: 0)
        resetButton.setTitle("Reset", for: .normal)
        resetButton.setTitleColor(#colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1), for: .normal)
        
        filterBaseView.addSubview(underlineReset)
        UIHelper.makeView(view: underlineReset, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: resetButton.bottomAnchor, leadingConstant: 0, trailingConstant: 0, topConstant: 12, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineReset.backgroundColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 0.2)
        
        filterBaseView.addSubview(startDateLabel)
        UIHelper.makeLabel(label: startDateLabel, corner: 0, allignment: .left, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: underlineReset.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 20, heightAnchor: 13, widthAnchor: 0)
        UIHelper.setTextLabel(label: startDateLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 12, text: "Start Date", kerning: 0.5)
        
        filterBaseView.addSubview(startDateTextField)
        UIHelper.makeTetxField(textField: startDateTextField, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: startDateLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 9, corner: 0, heightAnchor: 20, textColor:#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        UIHelper.setTextField(textField: startDateTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 0.8)
        
        filterBaseView.addSubview(startDateIconImage)
        UIHelper.makeImageView(imageView: startDateIconImage, leadingAnchor: filterBaseView.trailingAnchor, topAnchor: startDateLabel.bottomAnchor, leadingConstant: -59, topConstant: 10, corner: 0, heightAnchor: 18)
        startDateIconImage.widthAnchor.constraint(equalToConstant: 18 ).isActive = true
        startDateIconImage.contentMode = .center
        startDateIconImage.image = UIImage(named: "calenderIcon")
        
        filterBaseView.addSubview(underlinestartDate)
        UIHelper.makeView(view: underlinestartDate, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: startDateTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 7, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlinestartDate.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        filterBaseView.addSubview(endDateLabel)
        UIHelper.makeLabel(label: endDateLabel, corner: 0, allignment: .left, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: underlinestartDate.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 15, heightAnchor: 13, widthAnchor: 0)
        UIHelper.setTextLabel(label: endDateLabel, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1), weight: .regular, fontSize: 12, text: "End Date", kerning: 0.5)
        
        filterBaseView.addSubview(endDateTextField)
        UIHelper.makeTetxField(textField: endDateTextField, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor:  endDateLabel.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 9, corner: 0, heightAnchor: 20, textColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1))
        
        UIHelper.setTextField(textField: endDateTextField, fontName: fontNameHelper.NunitoRegular, fontColor: #colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1), weight: .regular, fontSize: 16, text: "", kerning: 0.8)
        
        filterBaseView.addSubview(endDateIconImage)
        UIHelper.makeImageView(imageView: endDateIconImage, leadingAnchor: filterBaseView.trailingAnchor, topAnchor: endDateLabel.bottomAnchor, leadingConstant: -59, topConstant: 10, corner: 0, heightAnchor: 18)
        endDateIconImage.widthAnchor.constraint(equalToConstant: 18 ).isActive = true
        endDateIconImage.contentMode = .center
        endDateIconImage.image = UIImage(named: "calenderIcon")
        
        filterBaseView.addSubview(underlineEndDate)
        UIHelper.makeView(view: underlineEndDate, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: endDateTextField.bottomAnchor, leadingConstant: 40, trailingConstant: -40, topConstant: 7, corner: 0, heightAnchor: 1, widthAnchor: 0)
        underlineEndDate.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 0.5)
        
        filterBaseView.addSubview(applyFilterButton)
        UIHelper.makeButton(button: applyFilterButton, leadingAnchor: filterBaseView.leadingAnchor, trailingAnchor: filterBaseView.trailingAnchor, topAnchor: underlineEndDate.bottomAnchor, leadingConstant: 24, trailingConstant: -24, topConstant: 33, corner: 24, heightAnchor: 48, widthAnchor: 0)
        applyFilterButton.setTitle("APPLY FILTER", for: .normal)
        applyFilterButton.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.5098039216, blue: 0.1254901961, alpha: 1)
        
        
    }
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date
        
        //ToolBar
        let startDateToolbar = UIToolbar();
        let endDateToolbar = UIToolbar();
        startDateToolbar.sizeToFit()
        endDateToolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let doneEndDateButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneEndDatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
       
        startDateToolbar.setItems([spaceButton,doneButton,], animated: false)
        endDateToolbar.setItems([spaceButton,doneEndDateButton], animated: false)
        
        
        startDateTextField.inputAccessoryView = startDateToolbar
        startDateTextField.inputView = datePicker
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        startDateTextField.text = formatter.string(from: datePicker.date)

        endDateTextField.inputAccessoryView = endDateToolbar
        endDateTextField.inputView = datePicker
        endDateTextField.text = formatter.string(from: datePicker.date)
        
    }
    
    @objc func donedatePicker(){
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        startDateTextField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func doneEndDatePicker(){
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        endDateTextField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    
    @objc func resetDate(sender: UIButton){
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        self.startDateTextField.text = formatter.string(from: Date())
        self.endDateTextField.text = formatter.string(from: Date())
    }
    
}
