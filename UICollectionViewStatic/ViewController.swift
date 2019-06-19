//
//  ViewController.swift
//  UICollectionViewStatic
//
//  Created by Артём Кармазь on 6/19/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let cellIds = ["Purple Cell", "Green Cell", "Blue Cell", "Red Cell"]
    private var cellSize = Array(repeating: CGSize(width: 170, height: 80), count: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellIds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIds[indexPath.item], for: indexPath)
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return cellSize[indexPath.item]
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        cellSize = [CGSize(width: 210, height: 60),
                    CGSize(width: 180, height: 100),
                    CGSize(width: 170, height: 80),
                    CGSize(width: 150, height: 150)]
        
        print("We press cellID - \(cellIds[indexPath.row])")
    }
}
