//
//  CollectionCellViewModel.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 07/07/2022.
//

import Foundation
import UIKit


class CollectionCellViewModel: NSObject {
    
    
}

extension CollectionCellViewModel: CollectionViewDelegateAndDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
}
