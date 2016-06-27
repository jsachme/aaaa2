//
//  ProfileController.swift
//  aaaa
//
//  Created by Josh Sach on 6/26/16.
//  Copyright © 2016 Josh Sach. All rights reserved.
//

import UIKit
class ProfileController:UIViewController
    
    
{
    @IBOutlet weak var profilePic:UIImageView!
    @IBOutlet weak var  postLabel:UILabel!
    @IBOutlet weak var followersLabel:UILabel!
    @IBOutlet weak var followingLabel:UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let currentUser = Profile.currentUser{
            
            self.postLabel.text = "\(currentUser.post.count)"
            self.followersLabel.text = "\(currentUser.followers.count)"
            self.followingLabel.text = "\(currentUser.following.count)"
            if let profPic = currentUser.picture{
                self.profilePic.image = profPic
            }
        }
            
        
      //  else
        //{
          //  print("No User is logged in")
      //  }

    }
    @IBAction func editProfile(sender:AnyObject){
        print("User wants to edit his profile")
    }

}

