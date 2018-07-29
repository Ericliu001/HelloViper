//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation


protocol ListPresenter: AnyObject {
    var router: ListRouter? {get set}
    var interactor: ListInteractor? {get set}

    var view: ListViewController? {get set}
}


class ListDefaultPresenter: ListPresenter {
    var router: ListRouter? = nil
    var interactor: ListInteractor? = nil
    var view: ListViewController? = nil
}