//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation

protocol AppPresenter: AnyObject {
    var router: AppRouter? {get set}
    var interactor: AppInteractor? {get set}
    weak var view: AppViewController? {get set}
}
