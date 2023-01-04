//
//  ViewController.swift
//  TodoList_CustomCell
//
//  Created by 윤병은 on 2023/01/04.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var isChkButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var todoList = TodoList.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        print(todoList)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "TodoListCell", for: indexPath) as! TodoListTableViewCell
        customCell.titleLabel.text = todoList[indexPath.row].title
        
        return customCell
    }
    
    
}
