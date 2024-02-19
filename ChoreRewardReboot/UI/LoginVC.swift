//
//  LoginVC.swift
//  ChoreRewardReboot
//
//  Created by Toan Pham on 2/19/24.
//

import UIKit

class LoginVC: UIViewController {
//    private let authService = AuthService.shared
    
    let userIdTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "User ID"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
        setUpAction()
    }
    
    private func setUpView() {
        view.backgroundColor = .systemGray
        
        // Add subviews
        view.addSubview(userIdTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInButton)
        
        // Constraints
        NSLayoutConstraint.activate([
            userIdTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userIdTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            userIdTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: userIdTextField.bottomAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: userIdTextField.widthAnchor),
            
            signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
        ])
    }
    
    private func setUpAction() {
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
    }
    
    @objc func signInButtonTapped() {
        // TO DO
    }
    
}

