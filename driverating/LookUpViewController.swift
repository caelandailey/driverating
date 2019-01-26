//
//  LookUpViewController.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//

import Foundation
import UIKit

class LookUpViewController: UIViewController, UINavigationControllerDelegate, LookUpViewDelegate{
    
    func search(plate:String) {
        navigationController?.pushViewController(RateViewController(plate: plate), animated: true)
    }
    
    
    private var viewHolder: LookUpView {
        return view as! LookUpView
    }
    
    // Loads the view
    override func loadView() {
        view = LookUpView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        viewHolder.delegate = self
    }
    
}
