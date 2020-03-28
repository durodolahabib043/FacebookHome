//
//  MainViewController.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-28.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    let facebookCellIdentifer = "FacebookCellIdentifer"
    let facebookCellXib = "FacebookCell"

    fileprivate func setUpCollectionView() {
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: facebookCellXib, bundle: nil), forCellWithReuseIdentifier: facebookCellIdentifer)
        collectionView.contentInsetAdjustmentBehavior  = .never

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }

}

extension MainViewController :UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: facebookCellIdentifer, for: indexPath) as! FacebookCell
        cell.nameLabel.text = "Sikiru Ayinde Barrister"
        cell.timePostedLabel.text = "2hrs"
        return cell
    }

    // make collectioView fill a row
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: view.frame.height - 100)
    }

}

import SwiftUI
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }


    struct ContainerView : UIViewControllerRepresentable {
        public typealias UIViewControllerType = MainViewController
        func makeUIViewController(context: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) -> ContentViewPreviews.ContainerView.UIViewControllerType {
            return MainViewController()
        }

        func updateUIViewController(_ uiViewController: ContentViewPreviews.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ContentViewPreviews.ContainerView>) {

        }
    }
}



