//
//  ProfileModel.swift
//  aaaa
//
//  Created by Josh Sach on 6/26/16.
//  Copyright © 2016 Josh Sach. All rights reserved.
//

import UIKit

class Profile {
    
    let username:String
    var followers:Array<String>
    var following:Array<String>
    var post:Array<Post>
    var picture:UIImage?
    
    //Keeping tracked of who's logged in
    static var currentUser:Profile?
    
    init (username:String, followers:Array<String>, following:Array<String>, post:Array<Post>, picture:UIImage?){
    
    self.username = username
    self.followers = followers
    self.following = following
    self.post = post
    self.picture = picture
    }
    static func createUser(username:String!) -> Profile
    {
        return Profile (username: username, followers: [String](), following: [String](), post: [Post](), picture: nil)
    
}
}