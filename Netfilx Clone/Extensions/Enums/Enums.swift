//
//  Enums.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 06/07/2022.
//

import Foundation
import UIKit


enum HomeFeed: Int, CaseIterable {
    case popular
    case upcoming
    case trendingMovies
    case trendingTV
    case topRated
    
    var sectionTitle: String {
        switch self {
        case .popular: return "Popular"
        case .upcoming: return "Upcoming Movies"
        case .trendingMovies: return "Trending Movies"
        case .trendingTV: return "Trending TV"
        case .topRated: return  "Top Rated"
        }
    }
}

enum HeroButtonData: String, CaseIterable {
    case play
    case download
    
    var buttonTitle: String {
        switch self {
        case .play: return "Play"
        case .download: return "Download"
        }
    }
}

enum Icon: CaseIterable {
    case heroImage
    case logoPoster
    case personLogo
    case playLogo
    
    var image: UIImage {
        switch self {
        case .heroImage: return UIImage(named: "heroImage")!
        case .logoPoster: return UIImage(named: "logoPoster")!
        case .personLogo: return UIImage(systemName: "person")!
        case .playLogo: return UIImage(systemName: "play.rectangle")!
        }
    }
}

