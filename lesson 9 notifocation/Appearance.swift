//
//  Appearance.swift
//  lesson 9 notifocation
//
//  Created by simo mario on 8/18/16.
//  Copyright © 2016 simo mario. All rights reserved.
//

import Foundation
import UIKit
class Appearance {
    static func setAppearance() {
        UITextField.appearance().backgroundColor = UIColor.cyanColor()
        UIButton.appearance().tintColor = UIColor.blueColor()
        UITabBar.appearance().layer.cornerRadius = 8
        UILabel.appearance().backgroundColor = UIColor.clearColor()
        UIView.appearance().backgroundColor = UIColor.brownColor()
    }
}
