//
//  PostTableViewCell.swift
//  swiftProject
//
//  Created by 栾有数 on 15/10/17.
//  Copyright © 2015年 栾有数. All rights reserved.
//

import UIKit
class Post {
    var avatorImage:UIImage!=nil
    var content:String!=nil
    var title:String!=nil
    var poster:String!=nil
    var postTime:String!=nil
}
class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var avatorImageView:UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    
    var post:Post?{
        didSet{
            configureCell();
        }
    }
    private func configureCell(){
        avatorImageView.image = post?.avatorImage;
        titleLabel.text = post?.title;
    }
}
