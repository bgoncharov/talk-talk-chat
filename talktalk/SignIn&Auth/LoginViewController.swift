//
//  LoginViewController.swift
//  talktalk
//
//  Created by Boris on 5/20/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let welcomeLabel = UILabel(text: "Welcome back!", font: .avenir26())
    
    let loginWithLabel = UILabel(text: "Login with")
    let orLabel = UILabel(text: "or")
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "Password")
    let needAnAccount = UILabel(text: "Need an account")

    let googleButton = UIButton(title: "Google", backgroundColor: .white, titleColor: .black, isShadow: true)

    let emailTextField = OneLineTextField(font: .avenir20())
    let passwordTextField = OneLineTextField(font: .avenir20())

    let loginButton = UIButton(title: "Login", backgroundColor: .buttonDark(), titleColor: .white)
    
    let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign in", for: .normal)
        button.setTitleColor(.buttonRed(), for: .normal)
        button.titleLabel?.font = .avenir20()
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        googleButton.customizeGoogleButton()
        setupConstraints()
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc private func loginButtonTapped() {
        print(#function)
    }
}

//MARK: - Setup Constraints
extension LoginViewController {
    private func setupConstraints() {
        let loginWithView = ButtonFormView(label: loginWithLabel, button: googleButton)
        let emailStackView = UIStackView(arrangedSubViews: [orLabel, emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubViews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        let stackView = UIStackView(arrangedSubViews: [loginWithView, orLabel, emailStackView, passwordStackView, loginButton], axis: .vertical, spacing: 40)
        
        signInButton.contentHorizontalAlignment = .leading
        let bottomStackView = UIStackView(arrangedSubViews: [needAnAccount, signInButton], axis: .horizontal, spacing: 0)
        bottomStackView.alignment = .firstBaseline
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
    }
}

//MARK: - SwiftUI
import SwiftUI

struct LoginVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let loginVC = LoginViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<LoginVCProvider.ContainerView>) -> LoginViewController {
            return loginVC
        }
        
        func updateUIViewController(_ uiViewController: LoginVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<LoginVCProvider.ContainerView>) {
            
        }
    }
}
