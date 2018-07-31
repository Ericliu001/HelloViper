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
        tableView.translatesAutoresizingMaskIntoConstraints = false
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

        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }
}


extension ListDefaultViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Item \(indexPath.item)"

        return cell
    }
}

extension ListDefaultViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        self.presenter?.didSelect(index: indexPath.item)
    }
}