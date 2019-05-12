//
//  OrientationController.swift
//  RdarOrientationOverFullScreen
//
//  Created by Yuan Zhou on 2019/05/12.
//  Copyright © 2019 Yuan Zhou. All rights reserved.
//

import UIKit

extension UITabBarController {
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if let vc = selectedViewController {
            print("ask parent view controllers for supported interface orientations via UITabBarController")
            return vc.supportedInterfaceOrientations
        } else {
            return .allButUpsideDown
        }
    }
}

extension UINavigationController {
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if let vc = viewControllers.last {
            print("ask parent view controllers for supported interface orientations via UINavigationController")
            return vc.supportedInterfaceOrientations
        } else {
            return .allButUpsideDown
        }
    }
}
