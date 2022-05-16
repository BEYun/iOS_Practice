//
//  ViewController.swift
//  PlayerBoard
//
//  Created by 윤병은 on 2022/05/12.
//

import UIKit

class ViewController: UIViewController, PlayerSettingDelegate {
    
    var player_list: [Player] = [messi, gerrard, vandijk, son]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 오버라이드 된 prepare 메소드를 사용하여 ViewController의 데이터를 SettingViewController에 데이터 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.playerName = self.nameLabel.text
            settingViewController.playerImage = self.imageView.image
        } else { return }
    }

    func changedSetting(playerName: String?, playerImage: UIImage?) {
        if let playerName = playerName {
            self.nameLabel.text = playerName
        }
        if let playerImage = playerImage {
            self.imageView.image = playerImage
        }
    }
}

