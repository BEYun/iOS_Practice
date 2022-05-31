//
//  AddViewController.swift
//  PhoneBook
//
//  Created by 윤병은 on 2022/05/30.
//

import UIKit

protocol AddViewDelegate: AnyObject {
    func addPerson(name: String, phoneNumber: String)
}

class AddViewController: UIViewController {
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var phoneNumberLabel: UITextField!
    
    weak var delegate: AddViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "연락처 수정"
    }
    
    @IBAction func DoneButton(_ sender: UIBarButtonItem) {
        guard let name = self.nameLabel.text else { return }
        guard let phoneNumber = self.phoneNumberLabel.text else { return }
        self.delegate?.addPerson(name: name, phoneNumber: phoneNumber)
        self.navigationController?.popViewController(animated: true)
    }
    
}
