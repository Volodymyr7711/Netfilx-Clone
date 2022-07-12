//
//  APICaller.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 08/07/2022.
//

import Foundation
import UIKit



class APICaller {
    public static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (String) -> Void) {
        guard let url = URL(string: "\(APIKey.basicURL)") else { return }
        
    }
}
