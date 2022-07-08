//
//  SearchResultViewController.swift
//  PhoneBook
//
//  Created by 윤병은 on 2022/05/30.
//

import UIKit

class SearchResultViewController: UIViewController {
    
    var persons = [Person]()
    @IBOutlet weak var searchName: UITextField!
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchTableView.dataSource = self
    }


}

extension SearchResultViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchcell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = self.persons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
}
