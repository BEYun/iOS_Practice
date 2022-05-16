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

    var playerName: String?
    var playerImage: UIImage?
    
    weak var delegate: PlayerSettingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView() {
        if let playerName = playerName, let playerImage = playerImage {
            self.playerName = playerName
            self.playerImage = playerImage
        }
        changeAlpha(player: playerName)
    }
    
    @IBAction func tapPlayerButton(_ sender: UIButton) {
        if sender == self.messiButton {
            changeAlpha(player: messi.name)
            changeSelectedPlayer(player: messi.name)
        } else if sender == self.gerrardButton {
            changeAlpha(player: gerrard.name)
            changeSelectedPlayer(player: gerrard.name)
        } else if sender == self.vandijkButton {
            changeAlpha(player: vandijk.name)
            changeSelectedPlayer(player: vandijk.name)
        } else {
            changeAlpha(player: son.name)
            changeSelectedPlayer(player: son.name)
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            playerName: self.playerName,
            playerImage: self.playerImage)
        self.navigationController?.popViewController(animated: true)
    }
    
    // 선택된 선수와 그렇지 않은 선수 간의 alpha 값을 조절하는 함수
    private func changeAlpha(player: String?) {
        self.messiButton.alpha = player == messi.name ? 1 : 0.2
        self.gerrardButton.alpha = player == gerrard.name ? 1 : 0.2
        self.vandijkButton.alpha = player == vandijk.name ? 1 : 0.2
        self.sonButton.alpha = player == son.name ? 1 : 0.2
    }
    
    private func changeSelectedPlayer(player: String?) {
        if player == messi.name {
            self.playerName = messi.name
            self.playerImage = messi.player_img
        } else if player == gerrard.name {
            self.playerName = gerrard.name
            self.playerImage = gerrard.player_img
        } else if player == vandijk.name {
            self.playerName = vandijk.name
            self.playerImage = vandijk.player_img
        } else {
            self.playerName = son.name
            self.playerImage = son.player_img
        }
    }
}
