//
//  ViewController.swift
//  ScreenTransition
//
//  Created by 윤병은 on 2022/05/10.
//

import UIKit

class ViewController: UIViewController, PresentSendDataDelegate, PushSendDataDelegate {
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapCodePushButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "CodePush Data"
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "CodePresent Data"
        viewController.delegate = self
        self.navigationController?.present(viewController, animated: true, completion: nil)
    }
    
    func sendData(name: String?) {
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "SeguePush Data"
        }
        else if let viewController = segue.destination as? SeguePresentViewController {
            viewController.name = "SeguePresent Data"
        }
    }
}

