    //
    //  StartViewController.swift
    //  LogInAppFull
    //
    //  Created by Kazakov Danil on 05.10.2022.
    //

import UIKit

class StartViewController: UIViewController {

@IBOutlet var loginOutlet: UITextField!
@IBOutlet var passwordOutlet: UITextField!

private let user = User.register()
private let profile = Profile.getProfile()

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let tabBarVC = segue.destination as? UITabBarController else { return }
    guard let viewControllers = tabBarVC.viewControllers else { return }
        
viewControllers.forEach { viewController in
    if let firstVC = viewController as? WelcomeViewController {
        for user in user {
            firstVC.greeting = user.login
            firstVC.view.addVerticalGradient()
        }
    } else if let navigationVC = viewController as? UINavigationController {
        guard let profileVC = navigationVC.topViewController as? ProfileViewController else { return }
        for profile in profile {
            profileVC.name = profile.name
            profileVC.age = profile.age
            profileVC.surname = profile.surname
            profileVC.city = profile.city
            profileVC.favPlace = profile.favoritePlace
            profileVC.view.addVerticalGradient()
        }
    }
        }

}

@IBAction func unwind(for Segue: UIStoryboardSegue) {
    guard Segue.source is WelcomeViewController else { return }
    loginOutlet.text = ""
    passwordOutlet.text = ""
}

func showAlert(title: String, message: String, textField: UITextField? = nil) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default) {_ in
        textField?.text = ""
    }
    alert.addAction(okAction)
    present(alert,animated: true)
}

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
}

@IBAction func loginAction() {
    for user in user {
        if loginOutlet.text == user.login && passwordOutlet.text == user.password {
            performSegue(withIdentifier: "goToMenu", sender: nil)
        } else {
            showAlert(title: "Error enter", message: "Password or login is incorrect")
            passwordOutlet.text = ""
        }
    }
}

@IBAction func forgotLoginAction(_ sender: UIButton) {
    for user in user {
        showAlert(title: "your login", message: "\(user.login)")
    }
}

@IBAction func forgotPasswordAction(_ sender: UIButton) {
    for user in user {
        showAlert(title: "your password", message: "\(user.password)")
    }
}

}
extension UIView {
func addVerticalGradient() {
    let topColor = UIColor (
        red: 240/255,
        green: 140/255,
        blue: 230/255,
        alpha: 1
    )
    let bottomColor = UIColor (
        red: 146/255,
        green: 148/255,
        blue: 180/255,
        alpha: 1
    )
    
    let gradient = CAGradientLayer()
    gradient.frame = bounds
    gradient.colors = [topColor.cgColor, bottomColor.cgColor]
    gradient.locations = [0.0, 1.0]
    gradient.startPoint = CGPoint(x: 0, y: 0)
    gradient.endPoint = CGPoint(x: 0, y: 1)
    layer.insertSublayer(gradient, at: 0)
}
}
