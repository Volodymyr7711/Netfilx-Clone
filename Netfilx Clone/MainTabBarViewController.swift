//
//  ViewController.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 06/07/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        setupTabBarAppearance()
        setupViewControllers()
    }
    
    private func setupTabBarAppearance() {
        UITabBar.appearance().barTintColor = .clear
        tabBar.tintColor = .white
    }
    
  private func setupViewControllers() {
          viewControllers = [
              createNavController(for: HomeViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
              createNavController(for: UpcomingViewController(), title: NSLocalizedString("Cooming Soon", comment: ""), image: UIImage(systemName: "play.circle")!),
              createNavController(for: SearchViewController(), title: NSLocalizedString("Top Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
              createNavController(for: DownloadsViewController(), title: NSLocalizedString("Downloads", comment: ""), image: UIImage(systemName: "arrow.down.to.line")!)
          ]
      }
}

extension MainTabBarViewController: TabBarProtocol {
    func createNavController(for rootViewController: UIViewController,
                             title: String,
                             image: UIImage) -> UIViewController {
        let navigaionController = UINavigationController(rootViewController: rootViewController)
        navigaionController.tabBarItem.title = title
        navigaionController.tabBarItem.image = image
        return navigaionController
    }
}

