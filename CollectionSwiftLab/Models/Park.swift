//
//  Park.swift
//  CollectionSwiftLab
//
//  Created by yurik on 10/10/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class Park {
    
    var name: String
    var country: String
    var date: String
    var photo: String
    var index: Int
    
    init(name: String, country: String, date: String, photo: String, index: Int) {
        self.name = name
        self.country = country
        self.date = date
        self.photo = photo
        self.index = index
    }
    convenience init(copying park: Park) {
        self.init(name: park.name, country: park.country, date: park.date, photo: park.photo, index: park.index)
    }
    
}
