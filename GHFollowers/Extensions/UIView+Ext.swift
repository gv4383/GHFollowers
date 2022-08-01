//
//  UIView_Ext.swift
//  GHFollowers
//
//  Created by Goyo Vargas on 8/1/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
