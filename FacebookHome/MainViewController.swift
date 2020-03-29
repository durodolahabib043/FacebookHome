//
//  MainViewController.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-28.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let facebookCellIdentifer = "FacebookCellIdentifer"
    let facebookCellXib = "FacebookCell"
    let facebookScrollCellIdentifer = "facebookHeaderIdentifer"
    let facebookScrollCellXib = "FacebookHeader"

    fileprivate func setUpCollectionView() {
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib.init(nibName: facebookCellXib, bundle: nil), forCellReuseIdentifier: facebookCellIdentifer)
        tableView.register(UINib.init(nibName: facebookScrollCellXib, bundle: nil), forCellReuseIdentifier: facebookScrollCellIdentifer)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }

}

extension MainViewController :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: facebookScrollCellIdentifer, for: indexPath) as! HorizontalScrollCell
            return cell ;
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: facebookCellIdentifer, for: indexPath) as! FacebookCell
        cell.nameLabel.text = "Sikiru Ayinde Barrister"
        cell.timePostedLabel.text = "2hrs"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 0 ){
            return 200;
        }
        else {
            return view.frame.height - 100 ;
        }
    }
}


import SwiftUI
struct ContentViewPreviews: PreviewProvider {
    @available(iOS 13.0.0, *)
    @available(iOS 13.0, *)
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }


    struct ContainerView : UIViewControllerRepresentable {
        public typealias UIViewControllerType = MainViewController
        @available(iOS 13.0, *)
        func makeUIViewController(context: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) -> ContentViewPreviews.ContainerView.UIViewControllerType {
            return MainViewController()
        }

        @available(iOS 13.0, *)
        func updateUIViewController(_ uiViewController: ContentViewPreviews.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) {

        }
    }
}



