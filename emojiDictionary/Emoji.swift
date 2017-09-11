//
//  Emoji.swift
//  emojiDictionary
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class Emoji {
    
    var emojiView = ""
    var emojiTitle = ""
    var emojiCreation = 0
    var emojiCategory = ""
    
    func createEmoji() -> [Emoji] {
        
        let lol = Emoji()
        lol.emojiView = "😂"
        lol.emojiTitle = "Face With Tears of Joy"
        lol.emojiCategory = "Face"
        lol.emojiCreation = 2010
        
        let shrug = Emoji()
        shrug.emojiView = "🤷"
        shrug.emojiTitle = "Person Shrugging"
        shrug.emojiCategory = "Person"
        shrug.emojiCreation = 2016
        
        let redHeart = Emoji()
        redHeart.emojiView = "❤️"
        redHeart.emojiTitle = "Red Heart"
        redHeart.emojiCategory = "Heart"
        redHeart.emojiCreation = 1993
        
        let heartEyes = Emoji()
        heartEyes.emojiView = "😍"
        heartEyes.emojiTitle = "Smiling Face With Heart-Eyes"
        heartEyes.emojiCategory = "Face"
        heartEyes.emojiCreation = 2010
        
        let thinkingFace = Emoji()
        thinkingFace.emojiView = "🤔"
        thinkingFace.emojiTitle = "Thinking Face"
        thinkingFace.emojiCategory = "Face"
        thinkingFace.emojiCreation = 2015
        
        let fire = Emoji()
        fire.emojiView = "🔥"
        fire.emojiTitle = "Fire"
        fire.emojiCategory = "Nature"
        fire.emojiCreation = 2010
        
        let kissFace = Emoji()
        kissFace.emojiView = "😘"
        kissFace.emojiTitle = "Face Blowing a Kiss"
        kissFace.emojiCategory = "Face"
        kissFace.emojiCreation = 2010
        
        let rollingEyes = Emoji()
        rollingEyes.emojiView = "🙄"
        rollingEyes.emojiTitle = "Face With Rolling Eyes"
        rollingEyes.emojiCategory = "Face"
        rollingEyes.emojiCreation = 2015
        
        let watermellon = Emoji()
        watermellon.emojiView = "🍉"
        watermellon.emojiTitle = "Watermellon"
        watermellon.emojiCategory = "Food"
        watermellon.emojiCreation = 2010
        
        let circus = Emoji()
        circus.emojiView = "🎪"
        circus.emojiTitle = "Circus Tent"
        circus.emojiCategory = "Activity"
        circus.emojiCreation = 2010
        
        return [lol, shrug, redHeart, heartEyes, thinkingFace, fire, kissFace, rollingEyes, watermellon, circus]
    }
}
