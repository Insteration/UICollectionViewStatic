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

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellIds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIds[indexPath.item], for: indexPath)
    }
    
    
}
