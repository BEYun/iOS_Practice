//
//  SettingViewController.swift
//  PlayerBoard
//
//  Created by 윤병은 on 2022/05/12.
//

import UIKit

protocol PlayerSettingDelegate: AnyObject {
    func changedSetting(playerName: String?, playerImage: UIImage?)
}

class SettingViewController: UIViewController {
    @IBOutlet weak var messiButton: UIButton!
    @IBOutlet weak var sonButton: UIButton!
    @IBOutlet weak var vandijkButton: UIButton!
    @IBOutlet weak var gerrardButton: UIButton!
    
    var playerButton: UIButton?
    var playerName: String?
    var playerImage: UIImage?
    
    weak var delegate: PlayerSettingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {

    }
    
    @IBAction func tapPlayerButton(_ sender: UIButton) {
        self.changeAlpha(player: sender)
        self.selectedPlayer(player: sender)
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            playerName: self.playerName,
            playerImage: self.playerImage)
        self.navigationController?.popViewController(animated: true)
    }
    
    // 선택된 선수와 그렇지 않은 선수 간의 alpha 값을 조절하는 함수
    private func changeAlpha(player: UIButton) {
        self.messiButton.alpha = player == self.messiButton ? 1 : 0.2
        self.gerrardButton.alpha = player == self.gerrardButton ? 1 : 0.2
        self.vandijkButton.alpha = player == self.vandijkButton ? 1 : 0.2
        self.sonButton.alpha = player == self.sonButton ? 1 : 0.2
    }
    
    private func selectedPlayer(player: UIButton) {
        if player == self.messiButton {
            self.playerName = "Lionel Messi"
            self.playerImage = UIImage(named: "lionel_messi")
        } else if player == self.gerrardButton {
            self.playerName = "Steven Gerrard"
            self.playerImage = UIImage(named: "steven_gerrard")
        } else if player == self.vandijkButton {
            self.playerName = "Virgil van Dijk"
            self.playerImage = UIImage(named: "virgil_van_dijk")
        } else {
            self.playerName = "Son Heung Min"
            self.playerImage = UIImage(named: "son_heung_min")
        }
    }
}
