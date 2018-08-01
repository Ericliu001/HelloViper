//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit


protocol ListRouter: AnyObject {

    var presenter: ListPresenter? { get set }
    var viewController: UIViewController? { get set }

    func route(for: Int)
}


class ListRouterImpl: ListRouter {
    weak var presenter: ListPresenter?
    weak var viewController: UIViewController?

    func route(for: Int) {
        let detailViewController = DetailBuilder().main()
        self.viewController?.show(detailViewController, sender: nil)
    }
}