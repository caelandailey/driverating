//
//  HomeView.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewDelegate: AnyObject {
    func rateButtonPressed()
    func lookButtonPressed()
}

class HomeView: UIView {
    
    // Variables~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    weak var delegate: HomeViewDelegate?

    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Image Picker"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 48)
        titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        return titleLabel
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Caelan Dailey"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        nameLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
        
        nameLabel.adjustsFontSizeToFitWidth = true
        nameLabel.textAlignment = .center
        return nameLabel
    }()
    
    
    let rateButton: UIButton = {
        let rateButton = UIButton()
        rateButton.setTitle("Rate Driver", for: .normal)
        rateButton.setTitleColor(.darkGray, for: .normal)
        rateButton.tintColor = .black
        return rateButton
    }()
    
    let lookButton: UIButton = {
        let lookButton = UIButton()
        lookButton.setTitle("Lookup Driver", for: .normal)
        lookButton.setTitleColor(.darkGray, for: .normal)
        lookButton.tintColor = .black
        return lookButton
    }()
    
    
    // Functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    //ADD SUBVIEWS AND TARGETS
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 245/255, alpha: 1.0)
        
        // Labels
        addSubview(titleLabel)
        addSubview(nameLabel)
        
        
        // Buttons
        addSubview(rateButton)
        addSubview(lookButton)
        
        
        rateButton.addTarget(self, action: #selector(rateButtonPressed), for: .touchUpInside)
        lookButton.addTarget(self, action: #selector(lookButtonPressed), for: .touchUpInside)
    }
    
    override func layoutSubviews() {
        rateButton.frame = CGRect(x: 0, y: self.frame.height*5/10, width: self.frame.width, height: self.frame.height/10)
        lookButton.frame = CGRect(x: 0, y: self.frame.height*7/10, width: self.frame.width, height: self.frame.height/10)
        titleLabel.frame = CGRect(x: 0, y: self.frame.height*2/10, width: self.frame.width, height: self.frame.height/10)
        nameLabel.frame = CGRect(x: 0, y: self.frame.height*3/10, width: self.frame.width, height: self.frame.height/20)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc
    func rateButtonPressed() {
        delegate?.rateButtonPressed()
    }
    
    @objc
    func lookButtonPressed() {
        delegate?.lookButtonPressed()
    }
}
