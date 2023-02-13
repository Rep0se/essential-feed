//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/9/23.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool

    public var hasLocation: Bool {
        return location != nil
    }
}
