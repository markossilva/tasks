//
//  MyTodoViewCell.swift
//  Tasks
//
//  Created by Markos Rodrigo Sousa da Silva on 13/10/23.
//

import UIKit

class MyTodoViewCell: UITableViewCell {
    
    static let cellIdentifier = "myTodoViewIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var legendLabel: UILabel!
    
    func setup(model: TodoModel) {
        titleLabel.text = model.title
        legendLabel.text = model.legend
    }
}

struct TodoModel {
    let title: String = ""
    let legend: String = ""
}
