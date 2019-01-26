//
//  RatingViewController.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//


import Foundation
import UIKit

class RateViewController: UIViewController {
    

    
    private var viewHolder: RateView {
        return view as! RateView
    }
    
    // Loads the view
    override func loadView() {
        view = RateView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
}
