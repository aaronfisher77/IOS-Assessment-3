//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Aaron Fisher on 11/8/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var personsArray = [Person]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! personCell
        
        let people = personsArray[indexPath.row]
        
        cell.nameLabel?.text = people.name
        cell.thingLabel?.text = people.favoriteThing
        
        cell.setup(people)
        
        return cell

    }
}

