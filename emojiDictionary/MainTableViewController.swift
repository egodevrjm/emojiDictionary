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
    var emoji = ""
    var emojiName = ""
    // Imports
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        emoji = emojiArray[indexPath.row]
        emojiName = emojiNames[indexPath.row]
        
        cell.textLabel?.text = emoji
        cell.detailTextLabel?.text = emojiName
        
        cell.textLabel?.font = UIFont(name: "Futura", size: 30)
        cell.detailTextLabel?.font = UIFont(name: "Futura", size: 30)
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiVC = segue.destination as! DetailViewController
        var path = tableView.indexPathForSelectedRow
        emojiVC.emoji = emojiArray[(path?.row)!]
        emojiVC.emojiName = emojiNames[(path?.row)!]
        
    }
    
   

}
