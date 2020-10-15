//
//  CollectionViewCell.swift
//  CollectionSwiftLab
//
//  Created by yurik on 10/8/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    var park: Park? {
        didSet {
            if let nationalPark = park{
                imageCell.image = UIImage(named: nationalPark.photo)
                textLabelCell.text = nationalPark.photo
            }
        }
    }
    
    @IBOutlet weak var textLabelCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCell.image = nil
        textLabelCell.text = ""
    }
}
