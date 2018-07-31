//
// Created by Eric Liu on 7/30/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit

class DetailBuilder: AppBuilder {
    func main() -> UIViewController {
        let view = DetailViewControllerImpl()

        return view
    }
}
