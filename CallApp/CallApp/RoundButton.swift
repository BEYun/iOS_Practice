//
//  RoundButton.swift
//  CallApp
//
//  Created by 윤병은 on 2022/05/25.
//

import UIKit

class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }

}
