//
// Created by Eric Liu on 7/30/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit

protocol DetailRouter: AnyObject {
    var presenter: DetailPresenter? { get set }
}


class DetailRouterImpl: DetailRouter {
    weak var presenter: DetailPresenter?
    weak var viewController: UIViewController?
}
