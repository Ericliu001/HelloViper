//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit

class ListBuilder: AppBuilder {
    func main() -> UIViewController {
        let view = ListDefaultViewController()

        let controller = UINavigationController(rootViewController: view)
        return controller
    }
}