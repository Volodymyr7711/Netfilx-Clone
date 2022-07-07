//
//  HeroHeaderUIView.swift
//  Netfilx Clone
//
//  Created by Volodymyr Mendyk on 06/07/2022.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let heroPosterCard: UIImageView = {
        let heroPosterCard = UIImageView()
        heroPosterCard.contentMode = .scaleAspectFill
        heroPosterCard.clipsToBounds = true
        heroPosterCard.image = UIImage(named: "\(Icon.heroImage)")
        return heroPosterCard
    }()
    
    private let heroPlayButton: UIButton = {
        let heroPlayButton = UIButton()
        let title = HeroButtonData.play.rawValue.capitalizeFirstLetter()
        heroPlayButton.setTitle("\(title)", for: .normal)
        heroPlayButton.layer.borderColor = UIColor.white.cgColor
        heroPlayButton.layer.borderWidth = 2
        heroPlayButton.layer.cornerRadius = 5
        heroPlayButton.translatesAutoresizingMaskIntoConstraints = false
        
        return heroPlayButton
    }()
    
    private let heroDownloadButton: UIButton = {
        let heroDownloadButton = UIButton()
        let title = HeroButtonData.download.rawValue.capitalizeFirstLetter()
        heroDownloadButton.setTitle("\(title)", for: .normal)
        heroDownloadButton.layer.borderColor = UIColor.white.cgColor
        heroDownloadButton.layer.borderWidth = 2
        heroDownloadButton.layer.cornerRadius = 5
        heroDownloadButton.translatesAutoresizingMaskIntoConstraints = false
        return heroDownloadButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroPosterCard)
        addSubview(heroPlayButton)
        addSubview(heroDownloadButton)
        setupGradient()
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroPosterCard.frame = bounds
    }
    
    private func setupGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    private func applyConstraints() {
        
        let heroPlayButtonConstraints = [
            heroPlayButton.leadingAnchor.constraint(equalTo: leadingAnchor,
                                                    constant: 35),
            heroPlayButton.bottomAnchor.constraint(equalTo: bottomAnchor,
                                                   constant: -70),
            heroPlayButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        let heroDownloadButtonConstraints = [
            heroDownloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            heroDownloadButton.bottomAnchor.constraint(equalTo: bottomAnchor,
                                                       constant: -70),
            heroDownloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        NSLayoutConstraint.activate(heroPlayButtonConstraints)
        NSLayoutConstraint.activate(heroDownloadButtonConstraints)
    }
}
