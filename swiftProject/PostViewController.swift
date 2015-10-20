//
//  PostViewController.swift
//  swiftProject
//
//  Created by 栾有数 on 15/10/17.
//  Copyright © 2015年 栾有数. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var avatarImageView:UIImageView!
    @IBOutlet weak var contentLabel:UILabel!
    @IBOutlet weak var postTimeLabel:UILabel!
    @IBOutlet weak var posterLabel:UILabel!
    @IBOutlet weak var titleLabel:UILabel!
    
    var post:Post?{
        didSet{
            configureView();
        }
        
    }
    var tempPost:Post?

    
    func configureView(){
        avatarImageView.image=post?.avatorImage
        contentLabel.text = post?.content
        postTimeLabel.text = post?.postTime
        posterLabel.text = post?.poster
        titleLabel.text = post?.title
        
//        avatarImageView.image=tempPost?.avatorImage
//        contentLabel.text = tempPost?.content
//        postTimeLabel.text = tempPost?.postTime
//        posterLabel.text = tempPost?.poster
//        titleLabel.text = tempPost?.title
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        post=tempPost
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
