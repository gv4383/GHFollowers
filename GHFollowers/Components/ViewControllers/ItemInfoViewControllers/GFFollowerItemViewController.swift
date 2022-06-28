//
//  GFFollowerItemViewController.swift
//  GHFollowers
//
//  Created by Goyo Vargas on 6/28/22.
//

import UIKit

class GFFollowerItemViewController: GFItemInfoViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
