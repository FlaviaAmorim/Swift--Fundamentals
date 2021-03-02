//
//  ViewController.swift
//  Login
//
//  Created by flaviaamorim on 02/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var loginButtom: UIButton!
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenPasswordOrUsername", sender: sender)
    }
    
    @IBAction func forgotUsernameAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenPasswordOrUsername", sender: sender)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if userNameTextField.text == userName && PasswordTextField.text == password {
            performSegue(withIdentifier: "ForgottenPasswordOrUsername", sender: sender)
        } else {
            showAlert()
        }
    }
    
    var userName = "Flavia"
    var password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtom()
    }
    
    func setupButtom() {
        loginButtom.layer.borderWidth = 1
        forgotPasswordButton.layer.borderWidth = 1
        forgotUsernameButton.layer.borderWidth = 1
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
         if sender == forgotPasswordButton {
             segue.destination.navigationItem.title = "Forgot Password"
         } else if sender == forgotUsernameButton {
             segue.destination.navigationItem.title = "Forgot Username"
         } else {
             segue.destination.navigationItem.title = userNameTextField.text
         }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Atenção!", message: "Login ou senha inválida", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

