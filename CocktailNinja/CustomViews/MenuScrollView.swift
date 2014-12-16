    //
    //  MenuScrollView.swift
    //  CocktailNinja
    //
    //  Created by Pete Chemsripong on 16/12/2014.
    //  Copyright (c) 2014 Colin Harris. All rights reserved.
    //
    
    import UIKit
    
    class MenuScrollView: UIScrollView,UIScrollViewDelegate {
       
        
        /*
        // Only override drawRect: if you perform custom drawing.
        // An empty implementation adversely affects performance during animation.
        override func drawRect(rect: CGRect) {
        // Drawing code
        }
        */
        
        func initMenuScroll(menuItems:[MenuItem]){
            
            self.delegate = self;
            
            self.pagingEnabled = true;
            self.showsVerticalScrollIndicator = false;
            self.showsHorizontalScrollIndicator = false;
           
            self.scrollsToTop = false;
            var width: CGFloat = self.superview!.frame.size.width * CGFloat(menuItems.count) ;
            var height: CGFloat = self.superview!.frame.size.height;
            self.contentSize = CGSizeMake(width,height);
            self.frame = CGRectMake(0, 0, width, height);
            
            self.addViews(menuItems);
        }
        
        func addViews(menuItems:[MenuItem] ){
            
            for (index, menutem) in enumerate(menuItems) {
                var imageView = UIImageView();
                var xOffset:CGFloat = CGFloat(index) * self.superview!.frame.size.width;
                imageView.frame = CGRectMake(xOffset , 0, self.superview!.frame.size.width, self.superview!.frame.size.height);
                println(arc4random_uniform(255))
                imageView.backgroundColor = UIColor(red: CGFloat(arc4random_uniform(255))/255, green: CGFloat(arc4random_uniform(255))/255, blue: CGFloat(arc4random_uniform(255))/255, alpha: CGFloat(1))
//                let url = NSURL(string:"http://thefoodbible.com/communities/7/004/007/071/107//images/4527326983.jpg");
//                var err: NSError?
//
//                var imageData: NSData? = nil
//                 imageData = NSData(contentsOfURL: url!);
//                var bgImage = UIImage(data:imageData!)
//                imageView.image = bgImage;
                
                
                var image : UIImage = UIImage(named:"cocktail.jpg")!
                imageView.image = image;
                
                
//                let url = NSURL.URLWithString("http://live-wallpaper.net/iphone/img/app/i/p/iphone-4s-wallpapers-mobile-backgrounds-dark_2466f886de3472ef1fa968033f1da3e1_raw_1087fae1932cec8837695934b7eb1250_raw.jpg");
//                var err: NSError?
//                var imageData :NSData = NSData.dataWithContentsOfURL(url!,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)
//                var bgImage = UIImage(data:imageData!)
                
                
                self.addSubview(imageView);

            }
            
            
        }
        
        func scrollViewDidScroll(scrollView: UIScrollView){
            println(scrollView.contentOffset.x);
            println(scrollView.contentOffset.y);
        }
        
    
        
    }
