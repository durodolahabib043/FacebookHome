//
//  FacebookCell.swift
//  FacebookHome
//
//  Created by Habib Durodola on 2020-03-28.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class FacebookCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timePostedLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
          backgroundColor = .lightGray
    }
    
}
