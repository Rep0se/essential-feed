//
//  UIImage+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Alexander Sundiev on 2/2/23.
//

import UIKit

extension UIImage {
    static func make(withColor color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        context.setFillColor(color.cgColor)
        context.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img!
    }
    
    func removeAlpha() -> UIImage {
        let inputImage = self
        let format = UIGraphicsImageRendererFormat.init()
        format.opaque = true //Removes Alpha Channel
        format.scale = inputImage.scale //Keeps original image scale.
        let size = inputImage.size
        return UIGraphicsImageRenderer(size: size, format: format).image { _ in
            inputImage.draw(in: CGRect(origin: .zero, size: size))
        }
    }
    
    func pngData(withAlpha: Bool) -> Data? {
        return withAlpha ? self.pngData() : self.removeAlpha().pngData()
    }
}
