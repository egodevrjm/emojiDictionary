//
//  DetailViewController.swift
//  emojiDictionary
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiNameLabel: UILabel!
    
    @IBOutlet weak var emojiCatLabel: UILabel!
    
    @IBOutlet weak var emojiCreatedLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showEmoji()
    }
   
    
    func showEmoji() {
        
        emojiLabel.text = emoji.emojiView
        emojiNameLabel.text = emoji.emojiTitle
        emojiCatLabel.text = "Category: \(emoji.emojiCategory)"
        emojiCreatedLabel.text = "Created: \(emoji.emojiCreation)"
        
    }

}
