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
    
    var plate: String = ""
    
    private var viewHolder: RateView {
        return view as! RateView
    }
    
    // Loads the view
    override func loadView() {
        view = RateView()
    }
    
    convenience init(plate: String) {
        self.init(nibName:nil, bundle:nil)
        self.plate = plate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(plate)
    }
    
}
