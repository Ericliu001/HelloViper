//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation


protocol ListInteractor: AnyObject {
    var presenter: ListPresenter? {get set}
}



class ListInteractorImpl: ListInteractor {
    var presenter: ListPresenter?
}