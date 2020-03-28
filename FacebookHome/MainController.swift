//
//  MainController.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-26.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        //  ContentViewPreviews()

        // Do any additional setup after loading the view.
    }
}

import SwiftUI
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }


    struct ContainerView : UIViewControllerRepresentable {
        public typealias UIViewControllerType = MainController
        func makeUIViewController(context: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) -> ContentViewPreviews.ContainerView.UIViewControllerType {
            return MainController()
        }

        func updateUIViewController(_ uiViewController: ContentViewPreviews.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) {

        }
    }



}
