//
//  ViewController.swift
//  CollectionSwiftLab
//
//  Created by yurik on 10/8/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var nameLabelDetail: UILabel!
    @IBOutlet weak var countryLabelDetail: UILabel!
    @IBOutlet weak var dateLabelDetail: UILabel!
    
    var park: Park?
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let nationalPark = park {
            navigationItem.title = nationalPark.name
            imageDetail.image = UIImage(named: nationalPark.photo)
            nameLabelDetail.text = nationalPark.name
            countryLabelDetail.text = nationalPark.country
            dateLabelDetail.text = nationalPark.date
        }
    }


}

