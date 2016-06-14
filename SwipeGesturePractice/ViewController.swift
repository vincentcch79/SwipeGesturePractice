//
//  ViewController.swift
//  SwipeGesturePractice
//
//  Created by 張智涵 on 2016/6/14.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
     @IBOutlet weak var imageView: UIImageView!
    
    var currentnImageIndex: Int = 0
    
    let imageNames = ["black_concentrated.jpg", "black_crying.jpg", "black_dazed.jpg", "black_determined.jpg", "black_dude.jpg", "black_dumbfounded.jpg", "black_ewbte.jpg", "black_excited bliss.jpg", "black_excited tears.jpg", "black_excited.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: "black_concentrated.jpg")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func swipeRight(sender: AnyObject) {
        print("swipeRight")
        if currentnImageIndex < imageNames.count - 1 {
            currentnImageIndex += 1
        }
        
        if currentnImageIndex < imageNames.count  {
            imageView.image = UIImage(named: imageNames[currentnImageIndex])
        }
//        
//        if currentnImageIndex == 9 {
//            currentnImageIndex = 0
//        }
        
    }
 
    @IBAction func swipeLeft(sender: AnyObject) {
        print("swipeLeft")
        
        if currentnImageIndex > 0{
            currentnImageIndex -= 1
        }
        if currentnImageIndex >= 0{
            imageView.image = UIImage(named: imageNames[currentnImageIndex])
        }
        
        
        
    }

}

