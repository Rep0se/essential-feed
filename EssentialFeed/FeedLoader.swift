//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 11/14/22.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
