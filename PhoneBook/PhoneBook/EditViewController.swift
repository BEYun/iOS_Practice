//
//  EditViewController.swift
//  PhoneBook
//
//  Created by 윤병은 on 2022/05/30.
//

import UIKit

protocol EditViewDelegate: AnyObject {
    func editPerson(name: String, phoneNumber: String, indexPath: Int)
}

class EditViewController: UIViewController {
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var phoneNumberLabel: UITextField!
    var name: String?
    var phoneNumber: String?
    var indexPath: Int?
    
    weak var delegate: EditViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.name
        self.phoneNumberLabel.text = self.phoneNumber
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        guard let name = self.nameLabel.text else { return }
        guard let phoneNumber = self.phoneNumberLabel.text else { return }
        guard let indexPath = self.indexPath else { return }
        debugPrint(name, phoneNumber, indexPath)
        self.delegate?.editPerson(name: name, phoneNumber: phoneNumber, indexPath: indexPath)
        self.navigationController?.popViewController(animated: true)
    }
    
}
