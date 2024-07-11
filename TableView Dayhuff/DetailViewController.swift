//
//  DetailViewController.swift
//  TableView Dayhuff
//
//  Created by Noah Dayhuff on 7/6/24.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemDetailsLabel: UILabel!
    
    var itemName: String?
    var itemDetails: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        }
    
    func updateLabels() {
        if let itemName = itemName {
            itemNameLabel.text = itemName
        }
        if let itemDetails = itemDetails {
            itemDetailsLabel.text = itemDetails
        }
    }
}
