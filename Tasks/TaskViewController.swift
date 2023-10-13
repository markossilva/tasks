//
//  TaskViewController.swift
//  Tasks
//
//  Created by Markos Rodrigo Sousa da Silva on 12/10/23.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var update: (() -> Void)?
    var task: String?
    var currentPosition: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        let newCount = count - 1
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().setValue(nil, forKey: "task_\(String(describing: currentPosition))")
        
        update?()
        
        navigationController?.popViewController(animated: true)
    }
}
