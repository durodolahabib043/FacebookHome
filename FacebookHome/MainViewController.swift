//
//  MainViewController.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-28.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var tableView: UITableView!

    let facebookCellIdentifer = "FacebookCellIdentifer"
    let facebookCellXib = "FacebookCell"
    let facebookScrollCellIdentifer = "facebookHeaderIdentifer"
    let facebookScrollCellXib = "FacebookHeader"

    fileprivate func setUpCollectionView() {
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: facebookCellXib, bundle: nil), forCellReuseIdentifier: facebookCellIdentifer)
        tableView.register(UINib(nibName: facebookScrollCellXib, bundle: nil), forCellReuseIdentifier: facebookScrollCellIdentifer)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        addNavigationBar()
    }


}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func addNavigationBar() {
        // logo
        let icon = UIImage(named: "fb_logo")
        let imageView = UIImageView(image: icon)
        imageView.contentMode = .scaleAspectFit
        let iconSize = CGRect(origin: CGPoint.zero, size: CGSize(width: 24, height: 24))

        let iconButton = UIButton(frame: iconSize)
        iconButton.setBackgroundImage(icon, for: .normal)
        let barButton = UIBarButtonItem(customView: iconButton)

        let currWidth = barButton.customView?.widthAnchor.constraint(equalToConstant: 80)
        currWidth?.isActive = true
        let currHeight = barButton.customView?.heightAnchor.constraint(equalToConstant: 24)
        currHeight?.isActive = true

        let button = UIButton()
        button.setTitle("Title Button", for: .normal)

        // itesm
        let search = UIBarButtonItem(title: "Search", style: .plain, target: self, action: Selector(("didTapEditButton")))
        let edit = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: Selector(("didTapEditButton")))
        navigationItem.rightBarButtonItems = [search, edit]
        navigationItem.leftBarButtonItem = barButton
    }
    @objc func didTapEditButton() {
           print("print")
       }

    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return 12
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: facebookScrollCellIdentifer, for: indexPath) as! HorizontalScrollCell
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: facebookCellIdentifer, for: indexPath) as! FacebookCell
        cell.nameLabel.text = "Sikiru Ayinde Barrister"
        cell.timePostedLabel.text = "2hrs"
        return cell
    }

    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200
        } else {
            return view.frame.height - 100
        }
    }
}

//import SwiftUI
//struct ContentViewPreviews: PreviewProvider {
//    @available(iOS 13.0.0, *)
//    @available(iOS 13.0, *)
//    static var previews: some View {
//        ContainerView().edgesIgnoringSafeArea(.all)
//    }
//
//    struct ContainerView: UIViewControllerRepresentable {
//        public typealias UIViewControllerType = MainViewController
//        @available(iOS 13.0, *)
//        func makeUIViewController(context _: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) -> ContentViewPreviews.ContainerView.UIViewControllerType {
//            return MainViewController()
//        }
//
//        @available(iOS 13.0, *)
//        func updateUIViewController(_: ContentViewPreviews.ContainerView.UIViewControllerType, context _: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) {}
//    }
//}
