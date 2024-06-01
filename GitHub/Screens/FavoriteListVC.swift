//
//  FavoriteListVC.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 4/25/24.
//

import UIKit

class FavoriteListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        PersistenceManager.retrieveFavorites { result in
            switch result{
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }

    }
    


}
