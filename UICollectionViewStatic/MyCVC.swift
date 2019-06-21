//
//  MyCVC.swift
//  UICollectionViewStatic
//
//  Created by Артём Кармазь on 6/20/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCVC: UICollectionViewController {
    
    private var cellIds = ["Purple Cell", "Green Cell", "Blue Cell", "Red Cell"]
    private var cellSize = Array(repeating: CGSize(width: 170, height: 80), count: 4)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellIds.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIds[indexPath.item], for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return cellSize[indexPath.item]
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //        if indexPath.row % 2 == 0 {
        //            cellSize = [CGSize(width: 210, height: 60),
        //                        CGSize(width: 180, height: 100),
        //                        CGSize(width: 170, height: 80),
        //                        CGSize(width: 150, height: 150)]
        //        } else {
        //            cellSize = [CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10),
        //                        CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10),
        //                        CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10),
        //                        CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10)]
        //        }
        //
        switch indexPath.row {
        case 0:
            cellSize[0] = CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10)
        case 1:
            cellSize[1] = CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10)
        case 2:
            cellSize[2] = CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10)
        case 3:
            cellSize[3] = CGSize(width: Int.random(in: 5...20) * 10, height: Int.random(in: 5...20) * 10)
        default:
            ()
        }
        
        collectionView.reloadItems(at: [indexPath])
        print("We press cellID - \(cellIds[indexPath.row])")
    }
    
    override func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let item = cellIds.remove(at: sourceIndexPath.item)
        cellIds.insert(item, at: destinationIndexPath.item)
        print("Source Index - \(sourceIndexPath)")
        print("Destination - \(destinationIndexPath)")
    }
}
