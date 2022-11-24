//
//  ViewController.swift
//  Practice_Alert
//
//  Created by 윤병은 on 2022/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func alertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert 메시지", message: "이것은 경고입니다.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default))
        alert.addAction(UIAlertAction(title: "취소", style: .cancel))
        present(alert, animated: true)
    }
    
    @IBAction func actionSheetButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: "ActionSheet 메시지", message: "이것은 액션시트입니다.", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Done", style: .default))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        actionSheet.addAction(UIAlertAction(title: "Delete", style: .destructive))
        present(actionSheet, animated: true)
    }
    
    

}

