//
//  ViewController.swift
//  CallApp
//
//  Created by 윤병은 on 2022/05/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button_1: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_4: UIButton!
    @IBOutlet weak var button_5: UIButton!
    @IBOutlet weak var button_6: UIButton!
    @IBOutlet weak var button_7: UIButton!
    @IBOutlet weak var button_8: UIButton!
    @IBOutlet weak var button_9: UIButton!
    @IBOutlet weak var button_ast: UIButton!
    @IBOutlet weak var button_0: UIButton!
    @IBOutlet weak var button_s: UIButton!
    @IBOutlet weak var button_call: UIButton!
    @IBOutlet weak var button_del: UIButton!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var addPhoneNumber: UIButton!
    
    private var phoneNumber: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func pressNumber(number: UIButton) {
        if let num = number.titleLabel?.text {
            phoneNumberLabel.text? += num
        } else {
            phoneNumberLabel.text? += "*"
        }
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        if phoneNumberLabel.isHidden == true && addPhoneNumber.isHidden == true {
            phoneNumberLabel.isHidden = false
            addPhoneNumber.isHidden = false
        }
        pressNumber(number: sender)
    }
    
    @IBAction func tapDelNumberButton(_ sender: UIButton) {
    }
    
}

