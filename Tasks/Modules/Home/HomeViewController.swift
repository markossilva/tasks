//
//  HomeViewController.swift
//  Tasks
//
//  Created by Markos Rodrigo Sousa da Silva on 13/10/23.
//

import UIKit

class HomeViewController: UITableViewController {
    
    var tasks: [TodoModel]?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MyTodoViewCell", bundle: nil), forCellReuseIdentifier: MyTodoViewCell.cellIdentifier)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks?.count ?? 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTodoViewCell.cellIdentifier, for: indexPath) as! MyTodoViewCell
        
        if let item = tasks?[indexPath.row] {
            cell.setup(model: item)
        } else {
            cell.setup(model: TodoModel())
            cell.textLabel?.text = "No items added"
        }
        
        return cell
    }
}
