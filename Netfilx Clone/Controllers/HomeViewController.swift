//
//  HomeViewController.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 06/07/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    fileprivate let viewModel = HomeViewModel()

    private var tableViewFeed: UITableView = {
        let tableViewFeed = UITableView(frame: .zero, style: .grouped)
        tableViewFeed.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        tableViewFeed.showsVerticalScrollIndicator = false
        tableViewFeed.showsHorizontalScrollIndicator = false
        return tableViewFeed
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableViewFeed.frame = view.bounds
    }
    
    private func setupTableView() {
        tableViewFeed.backgroundColor = .black
        tableViewFeed.dataSource = viewModel
        tableViewFeed.delegate = viewModel
        view.addSubview(tableViewFeed)
        setupHeroPoster()
    }
    
    private func setupNavigationBar() {
        configureLogo()
        configureSettingButtons()
    }
    
    private func setupHeroPoster() {
        let heroCardPoster = HeroHeaderUIView(frame: CGRect(x: 0,
                                                            y: 0,
                                                            width: view.bounds.width,
                                                            height: 450))
        tableViewFeed.tableHeaderView = heroCardPoster
    }
    
    private func configureLogo() {
        var logo = UIImage(named: "\(Icon.logoPoster)")
        logo = logo?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: logo,
                                                           style: .plain,
                                                           target: self,
                                                           action: nil)
    }
    
    private func configureSettingButtons() {
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: Icon.personLogo.image,
                            style: .plain,
                            target: self,
                            action: nil),
            UIBarButtonItem(image: Icon.playLogo.image,
                            style: .plain,
                            target: self,
                            action: nil)
        ]
        navigationController?.navigationBar.tintColor = .white
    }
}

extension HomeViewController {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        navigationController?.navigationBar.transform = .init(translationX: 0,
                                                              y: min(0, -offset))
    }
}
