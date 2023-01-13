//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 11/14/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
