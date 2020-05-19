//
//  ViewController.swift
//  talktalk
//
//  Created by Boris on 5/18/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
    }
}

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = ViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> ViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}

