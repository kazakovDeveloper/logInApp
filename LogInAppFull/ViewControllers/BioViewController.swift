//
//  BioViewController.swift
//  LogInAppFull
//
//  Created by Kazakov Danil on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    
    
    @IBOutlet var aboutLabel: UILabel!
    
    var about: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aboutLabel.text = about
    }
    
}
