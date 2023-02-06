//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/6/23.
//

import UIKit
import EssentialFeed

public final class FeedUIComposer {
    private init() {}
    
    public static func feedComposedWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewController(feedLoader: feedLoader)
        let feedController = FeedViewController(refreshController: refreshController)
        refreshController.onRefresh = { [weak feedController] feed in
            guard let feedController = feedController else { return }
            feedController.tableModel = feed.map { model in
                FeedImageCellController(model: model, imageLoader: imageLoader)
            }
        }
        return feedController
    }
}
