//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Derek Stengel on 3/8/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfast = Meal(name: "breakfast", food: [Food(name: "egg", description: "chicken egg"), Food(name: "bacon", description: "cooked pig"), Food(name: "toast", description: "cooked bread")])
        let lunch = Meal(name: "lunch", food: [Food(name: "sandwich", description: "ham and cheese"), Food(name: "chips", description: "handmade from potatoes"), Food(name: "salad", description: "hand tossed each morning")])
        let dinner = Meal(name: "dinner", food: [Food(name: "steak", description: "cooked to medium well"), Food(name: "potatoes", description: "a side of baked potatoes"), Food(name: "soup", description: "chicken noodle")])
        
        return [breakfast, lunch, dinner]
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
        }
        
        // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 3
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return meals[section].food.count
        }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
            let meal = meals[indexPath.section]
            let food = meal.food[indexPath.row]
            
            var content = cell.defaultContentConfiguration()
            content.text = food.name
            content.secondaryText = food.description
            cell.contentConfiguration = content
            
            return cell
        }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    }

