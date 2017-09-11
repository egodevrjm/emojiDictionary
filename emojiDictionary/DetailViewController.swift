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
    
    var emoji = ""
    var emojiName = ""
    var emojiCat = ""
    var emojiCreated = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        print(emoji)
        print(emojiName)
        emojiLabel.text = emoji
        emojiNameLabel.text = emojiName
        emojiCatLabel.text = emojiCat
        emojiCreatedLabel.text = emojiCreated
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}
