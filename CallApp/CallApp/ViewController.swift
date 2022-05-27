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

    // 버튼의 번호를 phoneNumber 배열에 저장하는 메소드
    func addNumber(number: UIButton) {
        if let num = number.titleLabel?.text {
            phoneNumber.append(num)
        } else {
            phoneNumber.append("*")
        }
    }

    // 전화번호의 길이에 맞게 하이픈을 추가하는 메소드
    func addHyphen() {
        if phoneNumber.count == 3 {
            phoneNumber.append("-")
        } else if phoneNumber.count == 7 {
            phoneNumber.append("-")
        } else if phoneNumber.count == 12 {
            guard let lastHyphenIndex = phoneNumber.lastIndex(of: "-") else { return }
            phoneNumber.remove(at: lastHyphenIndex)
            phoneNumber.insert("-", at: 8)
        }
    }
    
    // 전화번호의 길이에 맞게 하이픈을 제거하는 메소드
    func delHyphen() {
        let lastIndex = phoneNumber.count - 1
        if phoneNumber[lastIndex] == "-" {
            phoneNumber.remove(at: lastIndex)
        } else { return }
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        if phoneNumberLabel.isHidden == true && addPhoneNumber.isHidden == true {
            phoneNumberLabel.isHidden = false
            addPhoneNumber.isHidden = false
        }
        addHyphen()
        addNumber(number: sender)
        phoneNumberLabel.text = phoneNumber.joined(separator: "")
    }
    
    @IBAction func tapDelNumberButton(_ sender: UIButton) {
        if phoneNumber.isEmpty == false {
            phoneNumber.remove(at: phoneNumber.endIndex - 1)
            delHyphen()
            phoneNumberLabel.text = phoneNumber.joined(separator: "")
        }
        if phoneNumber.isEmpty {
            phoneNumberLabel.isHidden = true
            addPhoneNumber.isHidden = true
        }
    }
    
}

