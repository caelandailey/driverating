//
//  HomeViewController.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, HomeViewDelegate, UINavigationControllerDelegate {
    
    private var viewHolder: HomeView {
        return view as! HomeView
    }
    
    // Loads the view
    override func loadView() {
        view = HomeView()
    }
    
    func lookButtonPressed() {
        navigationController?.pushViewController(LookUpViewController(), animated: true)
    }
    
    func rateButtonPressed() {
        navigationController?.pushViewController(RateViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewHolder.delegate = self
    }
    
    
}

