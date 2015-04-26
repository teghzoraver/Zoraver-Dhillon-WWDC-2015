//
//  ViewController.swift
//  Zoraver Dhillon WWDC 2015
//
//  Created by Zoraver Singh Dhillon on 4/25/15.
//  Copyright (c) 2015 Zoraver Singh Dhillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SphereMenuDelegate {
    var images:[UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.2, green:0.38, blue:0.8, alpha:1)
        let start = UIImage(named: "start")
        let image1 = UIImage(named: "swift")
        let image2 = UIImage(named: "dhol")
        let image3 = UIImage(named: "cards")
        let image4 = UIImage(named: "rubiks")
        images = [image1!, image2!, image3!, image4!]
        var menu = SphereMenu(startPoint: CGPointMake(160, 320), startImage: start!, submenuImages:images)
        menu.delegate = self
        self.view.addSubview(menu)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sphereDidSelected(index: Int) {
        var viewController: UIViewController?
        if images[1] == "swift" {
            var storyboard: UIStoryboard = self.storyboard!
            viewController = (storyboard.instantiateViewControllerWithIdentifier("swiftViewController") as! UIViewController)
        }
        self.navigationController!.pushViewController(swiftViewController(), animated: true)
    }
    
    
}