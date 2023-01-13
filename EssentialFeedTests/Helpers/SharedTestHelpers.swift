//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Alexander Sundiev on 2023-01-07.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
