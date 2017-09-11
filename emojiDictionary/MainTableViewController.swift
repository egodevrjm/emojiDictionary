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
    let searchController = UISearchController(searchResultsController: nil)
    var filteredEmoji = [Emoji]()
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiArray = Emoji().createEmoji()
        filteredEmoji = emojiArray
        
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
    }

    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredEmoji = emojiArray.filter({( emojiArray : Emoji) -> Bool in
            return emojiArray.emojiTitle.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isFiltering() {
            return filteredEmoji.count
        }
        
        return emojiArray.count
        
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let emoji: Emoji
        if isFiltering() {
            emoji = filteredEmoji[indexPath.row]
        } else {
            emoji = emojiArray[indexPath.row]
        }
        
        cell.textLabel?.text = emoji.emojiView
        cell.detailTextLabel?.text = emoji.emojiTitle
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji: Emoji
        if isFiltering() {
            emoji = filteredEmoji[indexPath.row]
        } else {
            emoji = emojiArray[indexPath.row]
        }
        performSegue(withIdentifier: "detail", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let emojiVC = segue.destination as! DetailViewController
        emojiVC.emoji = sender as! Emoji
       
    }
}



extension MainTableViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
