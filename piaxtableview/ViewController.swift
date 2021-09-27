//
//  ViewController.swift
//  piaxtableview
//
//  Created by Bill Martensson on 2021-09-27.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var fruitTableview: UITableView!
    
    var fruit : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fruit.append("Banan")
        fruit.append("Apelsin")
        fruit.append("Kiwi")
        fruit.append("Äpple")

    }

    @IBAction func letsdostuff(_ sender: Any) {
        
        fruit.append("Päron")
        
        fruitTableview.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("Vi ritar ut en rad")
        print(indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "raden") as! FancyTableViewCell
        
        cell.fancyLabel.text = fruit[indexPath.row] + String(indexPath.row)
    
        return cell
        
    }

}

