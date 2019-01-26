//
//  DriverViewController.swift
//  driverating
//
//  Created by Caelan Dailey on 1/26/19.
//  Copyright © 2019 Caelan Dailey. All rights reserved.
//


import Foundation
import UIKit

class DriverViewController: UIViewController {
    
    var plate: String = ""
    
    private var viewHolder: DriverView {
        return view as! DriverView
    }
    
    // Loads the view
    override func loadView() {
        view = DriverView()
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
