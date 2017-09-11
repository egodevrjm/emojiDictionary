//
//  MainTableViewController.swift
//  emojiDictionary
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    // Variables
    
    var emojiArray : [Emoji] = []
    
   
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiArray = Emoji().createEmoji()
    }

   

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let emoji = emojiArray[indexPath.row]
        
        cell.textLabel?.text = emoji.emojiView
        cell.detailTextLabel?.text = emoji.emojiTitle
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "detail", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiVC = segue.destination as! DetailViewController
        emojiVC.emoji = sender as! Emoji
       
    }
    
   

}
