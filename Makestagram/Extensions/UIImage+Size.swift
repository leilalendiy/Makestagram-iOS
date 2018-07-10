//
//  UIImage+Size.swift
//  Makestagram
//
//  Created by Leila Adaza on 7/10/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

extension UIImage {
    var aspectHeight: CGFloat {
        let heightRatio = size.height / 736
        let widthRatio = size.width / 414
        let aspectRatio = fmax(heightRatio, widthRatio)
        
        return size.height / aspectRatio
    }
}
