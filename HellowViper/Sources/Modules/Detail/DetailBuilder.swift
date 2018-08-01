//
// Created by Eric Liu on 7/30/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit

class DetailBuilder: AppBuilder {
    func main() -> UIViewController {
        let view = DetailViewControllerImpl()
        let interactor = DetailInteractorImpl()
        let router = DetailRouterImpl()
        let presenter = DetailPresenterImpl()

        view.presenter = presenter
        router.presenter = presenter
        interactor.presenter = presenter

        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view

        router.viewController = view
        return view
    }
}
