//
//  LookUpView.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//

import Foundation
import UIKit
protocol LookUpViewDelegate: AnyObject {
    func search(plate:String)
}

class LookUpView: UIView {
    
    weak var delegate: LookUpViewDelegate?
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "LOOK UP"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 48)
        titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        return titleLabel
    }()
    
    let licenseTextField: UITextField = {
        let licenseTextField = UITextField()
        licenseTextField.clearsOnBeginEditing = true
        licenseTextField.font = UIFont.boldSystemFont(ofSize: 48)
        licenseTextField.addTarget(self, action: #selector(licenseTextFieldDone), for: .editingDidEndOnExit)
        licenseTextField.placeholder = "License plate #"
        licenseTextField.textAlignment = .center
        return licenseTextField
    }()
    
    
    
    // Functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    //ADD SUBVIEWS AND TARGETS
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 245/255, alpha: 1.0)
        
        // Labels
        addSubview(titleLabel)

        addSubview(licenseTextField)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
 
        titleLabel.frame = CGRect(x: 0, y: self.frame.height*2/10, width: self.frame.width, height: self.frame.height/10)

        licenseTextField.frame = CGRect(x: 0, y: self.frame.height*4/10, width: self.frame.width, height: self.frame.height/10)
        
    }
    
    @objc
    func licenseTextFieldDone(sender: UITextField) {
        if let plate = sender.text {
            delegate?.search(plate: plate)
        }
        
        sender.resignFirstResponder()
        
    }
    
}
