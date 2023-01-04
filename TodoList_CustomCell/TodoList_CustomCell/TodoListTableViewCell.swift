//
//  TodoListTableViewCell.swift
//  TodoList_CustomCell
//
//  Created by 윤병은 on 2023/01/04.
//

import UIKit

class TodoListTableViewCell: UITableViewCell {
    @IBOutlet weak var chkButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
