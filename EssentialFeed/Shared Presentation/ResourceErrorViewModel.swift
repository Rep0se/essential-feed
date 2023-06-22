//
//  ResourceErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Alexander Sundiev on 2/9/23.
//

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
