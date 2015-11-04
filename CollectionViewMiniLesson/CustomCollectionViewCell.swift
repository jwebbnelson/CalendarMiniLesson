//
//  CustomCollectionViewCell.swift
//  CollectionViewMiniLesson
//
//  Created by Jordan Nelson on 11/4/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet weak var monthLabel: UILabel!
    var monthNumber: Int = 0
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let smallCell = collectionView.dequeueReusableCellWithReuseIdentifier("secondCell", forIndexPath: indexPath) as! SmallCustomCollectionViewCell
    
        smallCell.numberLabel.text = "\(indexPath.row + 1)"
        return smallCell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return monthNumber
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.size.width/4 - 1, height:collectionView.frame.size.height/4 - 1)
    }
    
}
