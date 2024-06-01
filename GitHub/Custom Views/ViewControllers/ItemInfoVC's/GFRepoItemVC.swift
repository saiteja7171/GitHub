//
//  GFRepoItemVC.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/30/24.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC{
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    func configureItems(){
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemBlue, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate?.didTapGitHubProfile(for: user)
    }
}

