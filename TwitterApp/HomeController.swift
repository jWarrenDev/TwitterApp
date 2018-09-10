//
//  HomeController.swift
//  TwitterApp
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation
import UIKit

class WordCell: UICollectionViewCell {
    
    // This gets called when we need to dequeue a cell
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
   
    // Named the reused cell
    let cellId = "cellId"
    
    // Changed the background color to green.  Registered the Reusue Cell
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .green
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: "cellId")
        
    }

    // Indicated how many number of rows for the view
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    //
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        // cells are transparent when initialized.  Gave them a color
        cell.backgroundColor = .blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
