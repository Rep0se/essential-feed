//	
// Copyright © 2023 Alexander Sundiev. All rights reserved.
//

import XCTest
import EssentialFeed

class SharedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        
        assertLocalizedKeysAndValuesExist(in: bundle, and: table)
    }

    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }

}


