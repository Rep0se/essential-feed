//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 11/17/22.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}
