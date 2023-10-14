//
//  HomeViewController.swift
//  Tasks
//
//  Created by Markos Rodrigo Sousa da Silva on 13/10/23.
//

import UIKit

class HomeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MyTodoViewCell", bundle: nil), forCellReuseIdentifier: MyTodoViewCell.cellIdentifier)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTodoViewCell.cellIdentifier, for: indexPath) as! MyTodoViewCell
        cell.setup(model: TodoModel())
        return cell
    }
}
