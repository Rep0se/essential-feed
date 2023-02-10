//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/9/23.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
