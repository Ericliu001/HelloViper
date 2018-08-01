//
// Created by Eric Liu on 7/30/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation


protocol DetailPresenter: AnyObject {
    var view: DetailViewController? {get set}
    var interactor: DetailInteractor? {get set}
    var router: DetailRouterImpl? {get set}
}


class DetailPresenterImpl: DetailPresenter {
    weak var view: DetailViewController? = nil
    var interactor: DetailInteractor? = nil
    var router: DetailRouterImpl? = nil
}