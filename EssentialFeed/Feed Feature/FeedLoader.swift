//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 11/14/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
