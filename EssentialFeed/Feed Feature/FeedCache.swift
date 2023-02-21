//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 2/21/23.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
