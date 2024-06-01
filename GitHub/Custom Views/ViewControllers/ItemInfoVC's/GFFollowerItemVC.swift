//
//  GFRepoItemVC.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/30/24.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC{
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    func configureItems(){
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemOrange, title: "GitHub Profile")
    }
}

