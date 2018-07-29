//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit

class AppDefaultBuilder: AppBuilder {
    func main() -> UIViewController {
        let modules: [AppBuilder] = [
            ListBuilder(),
        ]

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = modules.map{ $0.main() }

        return tabBarController
    }
}
