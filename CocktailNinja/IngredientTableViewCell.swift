//
//  IngredientTableViewCell.swift
//  CocktailNinja
//
//  Created by Colin Harris on 3/12/14.
//  Copyright (c) 2014 Colin Harris. All rights reserved.
//

import Foundation
import UIKit
import HAL

class IngredientTableViewCell: UITableViewCell {
    
    @IBOutlet var amountLabel: UILabel?
    @IBOutlet var typeLabel: UILabel?
    
    func updateForIngredient(ingredient: [String: AnyObject]) {
//        amountLabel?.text = ingredient.attribute("amount") as? String
//        typeLabel?.text = ingredient.attribute("type") as? String
        
        amountLabel?.text = (ingredient["amount"] as? Int)?.description
        typeLabel?.text = ingredient["type"] as? String
    }
    
}