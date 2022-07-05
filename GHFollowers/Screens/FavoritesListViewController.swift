//
//  FavoritesListViewController.swift
//  GHFollowers
//
//  Created by Goyo Vargas on 6/22/22.
//

import UIKit

class FavoritesListViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
