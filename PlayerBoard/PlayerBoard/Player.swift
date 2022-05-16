//
//  Players.swift
//  PlayerBoard
//
//  Created by 윤병은 on 2022/05/16.
//

import Foundation
import UIKit

struct Player {
    var name: String?
    var player_img: UIImage?
}

var messi = Player(name: "Lionel Messi", player_img: UIImage(named: "lionel_messi"))
var gerrard = Player(name: "Steven Gerrard", player_img: UIImage(named: "steven_gerrard"))
var vandijk = Player(name: "Virgil Van Dijk", player_img: UIImage(named: "virgil_van_dijk"))
var son = Player(name: "Son Heung Min", player_img: UIImage(named: "son_heung_min"))
