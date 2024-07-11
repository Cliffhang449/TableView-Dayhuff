//
//  ViewController.swift
//  TableView Dayhuff
//
//  Created by Noah Dayhuff on 7/3/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let items = [
            Item(name: "Cosmodrome", details: "Exotic: Anarchy\nRaid: Scourge of the Past"),
            Item(name: "Dreadnought", details: "Exotic: Touch of Malice\nRaid: King's Fall"),
            Item(name: "Dreaming City", details: "Exotic: One Thousand Voices\nRaid: Last Wish"),
            Item(name: "Europa", details: "Exotic: Eyes of Tomorrow\nRaid: Deep Stone Crypt"),
            Item(name: "Moon", details: "Exotic: Divinity\nRaid: Garden of Salvation"),
            Item(name: "Venus", details: "Exotic: Vex Mythoclast\nRaid: Vault of Glass")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as! DetailViewController
                destinationVC.itemName = items[indexPath.row].name
                destinationVC.itemDetails = items[indexPath.row].details
            }
        }
    }
}

