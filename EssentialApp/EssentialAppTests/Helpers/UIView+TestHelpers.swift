//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Alexander Sundiev on 2/23/23.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}

