//
//  HomeViewController.swift
//  CocktailNinja
//
//  Created by Pete Chemsripong on 16/12/2014.
//  Copyright (c) 2014 Colin Harris. All rights reserved.
//

import UIKit




class HomeViewController: UIViewController {
    @IBOutlet weak var menuScrollView: MenuScrollView!

    override func viewDidLoad() {
        super.viewDidLoad();
        
        menuScrollView.initMenuScroll(self.setupMenuItems());

        // Do any additional setup after loading the view.
    }
    
    func setupMenuItems() -> [MenuItem] {
       var menuItems = [MenuItem]() ;
       for index in 1...5 {
         let menuItem = MenuItem();
         menuItems.append(menuItem);
        }
        return menuItems;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
