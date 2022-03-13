//
//  EmojiTableViewCell.swift
//  Emoji Reader
//
//  Created by Tony on 13.03.2022.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descripitionLabel.text = object.description
    }

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descripitionLabel: UILabel!
    
    
}
