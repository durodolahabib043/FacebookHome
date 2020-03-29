//
//  FacebookHeader.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-29.
//  Copyright © 2020 doh. All rights reserved.


import UIKit

class HorizontalScrollCell: UITableViewCell {

    let facebookSubIdentifer = "SubCellIdentifer"
    let facebookSubXib = "SubCell"

    @IBOutlet weak var collectionView: UICollectionView!
    fileprivate func setUpCollectionView() {
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: facebookSubXib, bundle: nil), forCellWithReuseIdentifier: facebookSubIdentifer)
        collectionView.backgroundColor = UIColor.gray.withAlphaComponent(0.8)
        collectionView.contentInsetAdjustmentBehavior  = .never

    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
    }
    
}


extension HorizontalScrollCell :UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: facebookSubIdentifer, for: indexPath) as! SubCell
        return cell ;
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }


}
