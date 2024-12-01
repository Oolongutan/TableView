//
//  ViewController.swift
//  TableView
//
//  Created by Matt Erdahl on 11/30/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //variables, choice tracks the index through different files
    var teaInfo = TeaInfo()
    var choice: Int = 0
    
    //set up table with correct rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teaInfo.teas.count
    }
    
    //fill in cells with tea names and type of tea
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = teaInfo.teas[indexPath.row].Name
        content.secondaryText = teaInfo.teas[indexPath.row].Type
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choice = tableView.indexPathForSelectedRow!.row
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //only send index info and get from TeaInfo again
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNavigation" {
            let navigation = segue.destination as! NavigationViewController
            navigation.choice = choice
        }
    }
}

