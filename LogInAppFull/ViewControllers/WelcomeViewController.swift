//
//  WelcomeViewController.swift
//  LogInAppFull
//
//  Created by Kazakov Danil on 05.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var welcomeOutlet: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeOutlet.text = ("hello👋🏽\(greeting ?? "please register")")
    }
}
