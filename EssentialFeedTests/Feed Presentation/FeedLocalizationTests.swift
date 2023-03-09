//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Alexander Sundiev on 2/9/23.
//

import XCTest
import EssentialFeed

final class FeedLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        
        assertLocalizedKeysAndValuesExist(in: bundle, and: table)
    }

}
