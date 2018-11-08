//
//  personCell.swift
//  Week3Assessment
//
//  Created by Aaron Fisher on 11/8/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import UIKit

class personCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thingLabel: UILabel!
    
    var personsArray = [Person]()
    
    func setup(_ person: Person) {

        nameLabel.text = person.name
        thingLabel.text = person.favoriteThing

    }
}
