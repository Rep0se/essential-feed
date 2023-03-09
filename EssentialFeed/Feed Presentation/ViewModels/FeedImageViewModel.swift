//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/9/23.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
