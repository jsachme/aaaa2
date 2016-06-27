//
//  PostModel.swift
//  aaaa
//
//  Created by Josh Sach on 6/26/16.
//  Copyright © 2016 Josh Sach. All rights reserved.
//

import UIKit

class Post {
    let creator:String
    let timestamp:NSDate
    let image:UIImage?
    let caption:String?
    static var feed:Array<Post>?
    
    init (creator:String, image:UIImage?, caption:String?){
    self.creator = creator
    self.caption = caption
    self.image = image
    timestamp = NSDate()
        
        
    }
}


class PostCell: UITableViewCell{
    
    @IBOutlet weak var captionLabel:UILabel!
    @IBOutlet weak var imgView: UIImageView!
}