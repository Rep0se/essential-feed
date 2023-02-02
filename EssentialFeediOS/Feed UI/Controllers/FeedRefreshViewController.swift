//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/2/23.
//

import UIKit
import EssentialFeed

final class FeedRefreshViewController: NSObject {
    private let feedLoader: FeedLoader
    
    var onRefresh: (([FeedImage]) -> Void)?
    
    private(set) lazy var view: UIRefreshControl = {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }()
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    @objc
    func refresh() {
        view.beginRefreshing()
        feedLoader.load { [weak self] result in
            guard let self = self else { return }
            if let feed = try? result.get() {
                self.onRefresh?(feed)
            }
            self.view.endRefreshing()
        }
    }
}
