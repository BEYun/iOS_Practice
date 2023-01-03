//
//  TodoListTableTableViewController.swift
//  Practice_TodoList
//
//  Created by 윤병은 on 2023/01/03.
//

import UIKit

class TodoListTableTableViewController: UITableViewController {
    
    var dataSet = [("iOS 공부", "TableViewController 공부하기", true), ("운동", "등과 이두 운동", false), ("독서", "알베르 카뮈의 시지프 신화 읽기", true)]

    lazy var todoList: [TodoList] = {
        var list: [TodoList] = []
        for (title, contents, done) in self.dataSet {
            var todo: TodoList = TodoList()
            todo.title = title
            todo.contents = contents
            todo.done = done
            list.append(todo)
        }
        return list
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        var config = cell.defaultContentConfiguration()
        config.text = todoList[indexPath.row].title
        config.secondaryText = todoList[indexPath.row].contents
        config.secondaryTextProperties.color = UIColor.darkGray
        cell.accessoryType = .checkmark
        cell.contentConfiguration = config
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
