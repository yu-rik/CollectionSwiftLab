//
//  SectionHeaderView.swift
//  CollectionSwiftLab
//
//  Created by yurik on 10/15/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
}
