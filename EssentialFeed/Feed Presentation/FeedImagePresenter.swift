//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 2/13/23.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
