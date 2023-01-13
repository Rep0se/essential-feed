//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 12/28/22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
