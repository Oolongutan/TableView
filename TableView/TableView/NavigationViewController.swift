//
//  NavigationViewController.swift
//  TableView
//
//  Created by Matt Erdahl on 11/30/24.
//

import UIKit

class NavigationViewController: UIViewController {

    var teaInfo = TeaInfo()
    var choice: Int = 0
    
    @IBOutlet weak var TeaName: UILabel!
    
    @IBOutlet weak var Explanation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TeaName.text = teaInfo.teas[choice].Name
        Explanation.text = teaInfo.blurbs[choice]
    }

}
