//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 11/14/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
