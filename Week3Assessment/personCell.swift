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
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var thingLabel: UILabel!
    
    
    
    
    var personsArray = [Person]()
    
    func setup(_ person: Person) {
        
        let ezra = Person(name: "Ezra Kiteck", favoriteThing: "Books", favoriteColor: .red)
        
        let briley = Person(name: "Briley Barron", favoriteThing: "Math", favoriteColor: .red)
        
        let hannah = Person(name: "Hannah Crimmins", favoriteThing: "Horses", favoriteColor: .green)
        
        personsArray.append(hannah)
        personsArray.append(briley)
        personsArray.append(ezra)
        
        
        nameLabel.text = hannah.name
        thingLabel.text = hannah.favoriteThing
        
        nameLabel.text = ezra.name
        thingLabel.text = ezra.favoriteThing
        
        nameLabel.text = briley.name
        thingLabel.text = briley.favoriteThing
    }
}
