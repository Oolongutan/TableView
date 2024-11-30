//
//  ViewController.swift
//  TableView
//
//  Created by Matt Erdahl on 11/30/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var teas = [
        (Name:"Caravan", Type:"Black"),
        (Name:"Cascadia Breakfast", Type:"Black"),
        (Name:"Gunpowder Pinhead", Type:"Green"),
        (Name:"Mild Moroccan Mint", Type:"Green"),
        (Name:"Silver Needles", Type:"White"),
        (Name:"Berry White", Type:"White"),
        (Name:"Bird Song Oolong", Type:"Oolong"),
        (Name:"Sticky Rice", Type:"Puehr"),
        (Name:"Dream Blend", Type:"Herbal"),
        (Name:"Cocoa Rouge", Type:"Herbal"),
        (Name:"Yellow Mudan", Type:"Yellow")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = teas[indexPath.row].Name
        content.secondaryText = teas[indexPath.row].Type
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

