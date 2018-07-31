//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation


protocol ListRouter: AnyObject {

    var presenter: ListPresenter? {get set}

    func route(for: Int)
}


class ListRouterImpl: ListRouter {
    var presenter: ListPresenter? = nil

    func route(for: Int) {

    }
}