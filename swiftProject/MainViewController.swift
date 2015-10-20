//
//  MainViewController.swift
//  swiftProject
//
//  Created by 栾有数 on 15/10/18.
//  Copyright © 2015年 栾有数. All rights reserved.
//

import UIKit
protocol PostCollectionContainer{
    var post:Post?{get set}
}
class MainViewController: UIViewController,PostCollectionContainer {

    var post:Post?{
        didSet{
            for vc in childViewControllers{
                if let postVC = vc as? PostViewController{
                    postVC.post = post
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        for vc in childViewControllers{
            if let postCollectionVC = vc as? ViewController {
                postCollectionVC.container = self
            }
        }
        // Do any additional setup after loading the view.
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
