//
//  Extension.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 07/07/2022.
//

import Foundation
import UIKit


typealias TableViewDelegateAndDataSource = UITableViewDelegate&UITableViewDataSource
typealias CollectionViewDelegateAndDataSource = UICollectionViewDataSource&UICollectionViewDelegate

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
