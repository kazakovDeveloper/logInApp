//
//  ProfileViewController.swift
//  LogInAppFull
//
//  Created by Kazakov Danil on 05.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var profilePic: UIImageView!
    @IBOutlet var nameOutlet: UITextField!
    @IBOutlet var surnameOutlet: UITextField!
    @IBOutlet var ageOutlet: UITextField!
    @IBOutlet var cityOutlet: UITextField!
    @IBOutlet var favoritePlace: UITextField!
    
    var name: String!
    var surname: String!
    var age: String!
    var city: String!
    var favPlace: String!
    
    private let profile = Profile.getProfile()
    
    override func viewDidLayoutSubviews() {
        profilePic.layer.cornerRadius = profilePic.frame.height / 2
        profilePic.clipsToBounds = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        nameOutlet.text = name
        surnameOutlet.text = surname
        ageOutlet.text = age
        cityOutlet.text = city
        favoritePlace.text = favPlace
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutVC = segue.destination as? BioViewController else { return }
        for profile in profile {
            aboutVC.about = profile.bio
        }
        aboutVC.view.addVerticalGradient()
    }
    
}
