//
// Created by Eric Liu on 7/28/18.
// Copyright (c) 2018 eric.liu. All rights reserved.
//

import Foundation
import UIKit


protocol ListViewController: class {
    var presenter: ListPresenter? { get set }
}

class ListDefaultViewController: UIViewController, ListViewController {

    var presenter: ListPresenter?

    weak var tableView: UITableView?

    init() {
        super.init(nibName: nil, bundle: nil)

        self.title = "List"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    override func loadView() {
        super.loadView()

        let tableView = UITableView()
        self.tableView = tableView
        self.view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}