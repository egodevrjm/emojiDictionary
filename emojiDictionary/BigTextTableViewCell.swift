//
//  BigTextTableViewCell.swift
//  emojiMeaning
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class BigTextTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        textLabel?.font = UIFont(name: "Futura", size: 20)
        detailTextLabel?.font = UIFont(name: "Futura", size: 20)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
