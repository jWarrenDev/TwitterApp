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
        setupViews()
    }
    // set label and mask
    let wordLabel: UILabel = {
        let label = UILabel()
        label.text = "Test Jerrick Test"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func setupViews() {
        backgroundColor = .yellow
        
        // provide constraints and anchors for word label
        addSubview(wordLabel)
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
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
        collectionView?.backgroundColor = .white
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: "cellId")
        
    }

    // Indicated how many number of rows for the view
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    // grab a cell and reuse it.
    // also grab a cell and confiure it. the text, etc.
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        // cells are transparent when initialized.  Gave them a color
        // Cell is being changed to blue immediately after being set to yellow.
        // cell.backgroundColor = .blue
       
        
        return cell
    }
    
    // configures the size of and width of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
}
