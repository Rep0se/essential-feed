//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/9/23.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
