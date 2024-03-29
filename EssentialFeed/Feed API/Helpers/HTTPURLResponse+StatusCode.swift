//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Alexander Sundiev on 2/14/23.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
