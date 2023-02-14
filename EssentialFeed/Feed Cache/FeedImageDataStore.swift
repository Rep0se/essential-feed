//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 2/14/23.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
