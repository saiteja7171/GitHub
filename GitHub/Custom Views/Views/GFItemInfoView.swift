//
//  GFItemInfoView.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/30/24.
//

import UIKit

enum ItemInfoType{
    case repos, gists, following, followers
}

class GFItemInfoView: UIView {

    let symbolImageView     = UIImageView()
    let titleLabel          = GFTitleLabel(textAlignment: .left, fontSize: 14)
    let countLabel          = GFTitleLabel(textAlignment: .center, fontSize: 14)
    var views: [UIView]      = []
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        views = [symbolImageView,titleLabel,countLabel]
        for view in views {
            addSubview(view)
        }
        symbolImageView.translatesAutoresizingMaskIntoConstraints   = false
        symbolImageView.contentMode = .scaleAspectFit
        symbolImageView.tintColor   = .label
        titleLabel.translatesAutoresizingMaskIntoConstraints        = false
        countLabel.translatesAutoresizingMaskIntoConstraints        = false
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            
            titleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    func set(itemInfoType: ItemInfoType, withCount count: Int){
        switch itemInfoType{
        case .repos:
            symbolImageView.image   = UIImage(systemName: SFSymbols.repos)
            titleLabel.text         = "Public Repos"
        case .gists:
            symbolImageView.image   = UIImage(systemName: SFSymbols.gists)
            titleLabel.text         = "Public Gists"
        case .following:
            symbolImageView.image   = UIImage(systemName: SFSymbols.following)
            titleLabel.text         = "Following"
        case .followers:
            symbolImageView.image   = UIImage(systemName: SFSymbols.followers)
            titleLabel.text         = "Followers"
        }
        countLabel.text             = String(count)
    }
}
