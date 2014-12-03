//
//  DetailViewController.swift
//  CocktailNinja
//
//  Created by Colin Harris on 2/12/14.
//  Copyright (c) 2014 Colin Harris. All rights reserved.
//

import UIKit
import HAL

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var detailItem: HAL? {
        didSet {
            self.ingredients = self.detailItem?.attribute("ingredients") as [[String: AnyObject]]
            self.configureView()
        }
    }
    
    var ingredients: [[String: AnyObject]] = []

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: HAL = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.attribute("name") as? String
            }
        }
    }
    
    @IBAction func makeDrink() {
        // TODO: pour me a mfing drink yo!
        NSLog("Not Yet Implemented!");
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("IngredientCell", forIndexPath: indexPath) as IngredientTableViewCell
        
        let ingredient = ingredients[indexPath.row]
        cell.updateForIngredient(ingredient)
        return cell
    }

}

