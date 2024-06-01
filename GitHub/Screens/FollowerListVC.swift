//
//  FollowerListVC.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/15/24.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        
        navigationController?.navigationBar.prefersLargeTitles = true

    }
    


}
