//
//  TabBarProtocol.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 06/07/2022.
//

import Foundation
import UIKit

protocol TabBarProtocol {
    func createNavController(for rootViewController: UIViewController,
                             title: String,
                             image: UIImage) -> UIViewController
}
