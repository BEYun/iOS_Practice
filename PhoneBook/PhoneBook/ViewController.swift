//
//  ViewController.swift
//  PhoneBook
//
//  Created by 윤병은 on 2022/05/30.
//

import UIKit

class ViewController: UIViewController, AddViewDelegate, EditViewDelegate {
    @IBOutlet weak var phoneTableView: UITableView!
    var persons = [Person]() {
        didSet {
            self.saveData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
        self.phoneTableView.dataSource = self
        self.phoneTableView.delegate = self
    }

    @IBAction func tapAddPerson(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController") as? AddViewController else { return }
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    // addViewController에서 추가된 새로운 Person 인스턴스를 persons 객체에 추가
    func addPerson(name: String, phoneNumber: String) {
        let person = Person(name: name, phoneNumber: phoneNumber)
        self.persons.append(person)
        self.phoneTableView.reloadData()
    }
    
    // EditViewController에서 수정된 Person 인스턴스를 persons 객체에 적용
    func editPerson(name: String, phoneNumber: String, indexPath: Int) {
        self.persons[indexPath].name = name
        self.persons[indexPath].phoneNumber = phoneNumber
        self.phoneTableView.reloadData()
    }
    
    // UserDefaults에 데이터 저장
    func saveData() {
        let data = self.persons.map {
            [
                "name": $0.name,
                "phoneNumber": $0.phoneNumber
            ]
        }
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: "persons")
    }
    
    // UserDefaults로 데이터 불러오기
    func loadData() {
        let userDefaults = UserDefaults.standard
        guard let data = userDefaults.object(forKey: "persons") as? [[String:Any]] else { return }
        self.persons = data.compactMap {
            guard let name = $0["name"] as? String else { return nil }
            guard let phoneNumber = $0["phoneNumber"] as? String else { return nil }
            return Person(name: name, phoneNumber: phoneNumber)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = self.persons[indexPath.row]
        cell.textLabel?.text = person.name
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = self.persons[indexPath.row]
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "EditViewController") as? EditViewController else { return }
        viewController.name = person.name
        viewController.phoneNumber = person.phoneNumber
        viewController.indexPath = indexPath.row
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
