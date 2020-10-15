//
//  MasterViewController.swift
//  CollectionSwiftLab
//
//  Created by yurik on 10/8/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit



class MasterViewController: UICollectionViewController {

    fileprivate var parksDataSource = ParkDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = collectionView.frame.width/2
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionHeadersPinToVisibleBounds = true
        
        

    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MasterToDetail" {
            if let indexPath = collectionView.indexPathsForSelectedItems?.first{ //получение индекса ячейки по которой кликнул пользователь
                if let park = parksDataSource.parkForItemAtIndexPath(indexPath){
                    let detailViewController = segue.destination as! DetailViewController //переход к контроллеру с идентификатором MasterToDetail
                    detailViewController.park = park
                }
            }
        }
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return parksDataSource.numberOfSections
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // return parksDataSource.count
        return parksDataSource.numberOfParksInSection(section)
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
    
       // cell.textLabelCell.text = "\(indexPath.row)"
        if let park = parksDataSource.parkForItemAtIndexPath(indexPath){
           // cell.imageCell.image = UIImage(named: park.photo)
            cell.park = park
          
        }
    
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "SectionHeader", for: indexPath) as! SectionHeaderView
        if let title = parksDataSource.titleForSectionAtIndexPath(indexPath){
            sectionHeaderView.title = title
        }
        return sectionHeaderView
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
