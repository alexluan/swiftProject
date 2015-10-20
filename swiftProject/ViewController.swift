//
//  ViewController.swift
//  swiftProject
//
//  Created by 栾有数 on 15/10/17.
//  Copyright © 2015年 栾有数. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var posts:[Post]=[]
    
    var container:PostCollectionContainer!//delegate
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCell", forIndexPath: indexPath) as! PostTableViewCell
        cell.post = posts[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if container == nil{//代理是否存在
            performSegueWithIdentifier("toPostViewController", sender: indexPath)
        }else{
                container.post = posts[indexPath.row]
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toPostViewController" {
            if let indexPath = sender as? NSIndexPath{
                let dest = segue.destinationViewController as! PostViewController
                dest.tempPost = posts[indexPath.row]
                print(dest.tempPost!.content)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var post = Post()
        post.avatorImage = UIImage(named: "aa.jpg")
        post.title = "aaa"
        post.content = "aaacontent"
        post.poster = "alex"
        post.postTime = "1991-10-21 10:10:10"
        posts.append(post)
        
        post = Post()
        post.avatorImage = UIImage(named: "aa.jpg")
        post.title = "bbb"
        post.content = "bbbcontent"
        post.poster = "eric"
        post.postTime = "1990-10-21 10:10:10"
        posts.append(post)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

