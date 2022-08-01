//
//  GFFollowerItemViewController.swift
//  GHFollowers
//
//  Created by Goyo Vargas on 6/28/22.
//

import UIKit

protocol GFFollowerItemViewControllerDelegate: AnyObject {
    func didTapGitHubFollowers(for user: User)
}

class GFFollowerItemViewController: GFItemInfoViewController {
    weak var delegate: GFFollowerItemViewControllerDelegate!
    
    init(user: User, delegate: GFFollowerItemViewControllerDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubFollowers(for: user)
    }
}
