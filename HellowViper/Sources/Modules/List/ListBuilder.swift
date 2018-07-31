//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit

class ListBuilder: AppBuilder {
    func main() -> UIViewController {
        let view = ListViewControllerImpl()
        let interactor = ListInteractorImpl()
        let router = ListRouterImpl()
        let presenter = ListPresenterImpl()

        view.presenter = presenter
        interactor.presenter = presenter
        router.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        router.viewController = view

        let controller = UINavigationController(rootViewController: view)
        return controller
    }
}