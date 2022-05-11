//
//  CodePresentViewController.swift
//  ScreenTransition
//
//  Created by 윤병은 on 2022/05/10.
//

import UIKit

protocol PresentSendDataDelegate: AnyObject {
    func sendData(name: String?)
}

class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: PresentSendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }

    @IBAction func tapBackButton(_ sender: Any) {
        self.delegate?.sendData(name: self.name)
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
