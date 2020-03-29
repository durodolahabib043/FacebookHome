//
//  FacebookHeader.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-29.
//  Copyright © 2020 doh. All rights reserved.


import UIKit

class FacebookHeader: UITableViewCell {

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
        // Initialization code
        setUpCollectionView()
    }
    
}


extension FacebookHeader :UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {


        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: facebookSubIdentifer, for: indexPath) as! SubCell
        return cell ;

        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: facebookCellIdentifer, for: indexPath) as! FacebookCell
        //        cell.nameLabel.text = "Sikiru Ayinde Barrister"
        //        cell.timePostedLabel.text = "2hrs"
        //        return cell
    }

    // make collectioView fill a row
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //
    //         return .init(width: collectionView.frame.width, height: 200)
    //
    //    }

    // sizeForItemAtIndexPath

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow:CGFloat = 4
        let hardCodedPadding:CGFloat = 5
        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }

    //    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    //        let itemsPerRow:CGFloat = 4
    //        let hardCodedPadding:CGFloat = 5
    //        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
    //        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
    //        return CGSize(width: collectionView.frame.width, height: 100)
    //    }
    //    // header
    //
    //    // show CV header
    //    func collectionView(_ collectionView: UICollectionView,
    //                        viewForSupplementaryElementOfKind kind: String,
    //                        at indexPath: IndexPath) -> UICollectionReusableView {
    //
    //        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:facebookHeaderIdentifer , for: indexPath) as! FacebookHeader
    //
    //        headerView.backgroundColor = UIColor.red
    //        //headerView.headerImageView.image = UIImage(named: "stretchy_header")
    //       // headerView.headerImageView.contentMode = .scaleAspectFill
    //        return headerView
    //    }

    //    // height of CV
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    //        return CGSize(width: collectionView.frame.width, height: 200.0)
    //    }

}
