//
//  ChatRequestViewController.swift
//  talktalk
//
//  Created by Boris on 5/27/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

class ChatRequestViewController: UIViewController {
    
    let containerView = UIView()
    let imageView = UIImageView(image: #imageLiteral(resourceName: "human5"), contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "Lauren Dev", font: .systemFont(ofSize: 20, weight: .light))
    let aboutMeLabel = UILabel(text: "Yo are lucky to start a new chat!", font: .systemFont(ofSize: 16, weight: .light))
    let acceptButton = UIButton(title: "ACCEPT", backgroundColor: .black, font: .laoSangamMN20(), titleColor: .white, isShadow: false, cornerRadius: 10)
    let denyButton = UIButton(title: "Deny", backgroundColor: .mainWhite(), font: .laoSangamMN20(), titleColor: #colorLiteral(red: 0.8352941176, green: 0.2, blue: 0.2, alpha: 1), isShadow: false, cornerRadius: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    private func customizeElements() {
        denyButton.layer.cornerRadius = 1.2
        denyButton.layer.borderColor = #colorLiteral(red: 0.8352941176, green: 0.2, blue: 0.2, alpha: 1)
    }
}

extension ChatRequestViewController {
    private func setupConstraints() {
        
    }
}

// MARK: - SwiftUI
import SwiftUI

struct ChatRequestVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let chatRequestVC = ChatRequestViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ChatRequestVCProvider.ContainerView>) -> ChatRequestViewController {
            return chatRequestVC
        }
        
        func updateUIViewController(_ uiViewController: ChatRequestVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ChatRequestVCProvider.ContainerView>) {
            
        }
    }
}
