//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/9/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
