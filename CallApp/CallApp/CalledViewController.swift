//
//  CalledViewController.swift
//  CallApp
//
//  Created by 윤병은 on 2022/05/30.
//

import UIKit

class CalledViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func hangUpButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
