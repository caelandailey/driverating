//
//  DriverView.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//

import Foundation
import UIKit


class DriverView: UIView {
    
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "DRIVER VIEW"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 48)
        titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        return titleLabel
    }()
    
    
    
    // Functions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    //ADD SUBVIEWS AND TARGETS
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 245/255, alpha: 1.0)
        
        // Labels
        addSubview(titleLabel)
        
        
    }
    
    override func layoutSubviews() {
        
        titleLabel.frame = CGRect(x: 0, y: self.frame.height*2/10, width: self.frame.width, height: self.frame.height/10)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
