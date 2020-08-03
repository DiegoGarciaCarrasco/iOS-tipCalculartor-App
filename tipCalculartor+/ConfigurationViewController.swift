//
//  ConfigurationViewController.swift
//  tipCalculartor+
//
//  Created by Diego Garcia on 8/2/20.
//  Copyright © 2020 GarcsTeam. All rights reserved.
//

import UIKit

class ConfigurationViewController: UIViewController {

    @IBOutlet weak var appearanceSegmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Configuration"
        
        
    }
    
    
    @IBAction func switchMode(_ sender: Any) {
        switch appearanceSegmentController.selectedSegmentIndex {
        case 0:
            overrideUserInterfaceStyle = .light
        case 1:
            overrideUserInterfaceStyle = .dark
        case 2:
            overrideUserInterfaceStyle = .unspecified
        default:
            overrideUserInterfaceStyle = .unspecified
        }
    }
 
    

}
