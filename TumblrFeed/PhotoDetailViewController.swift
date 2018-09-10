//
//  PhotoDetailViewController.swift
//  TumblrFeed
//
//  Created by Ka Lee on 9/8/18.
//  Copyright © 2018 Ka Lee. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    
    @IBOutlet weak var photoView: UIImageView!
    
    var post: [String: Any]! //single public property for the photo url
    
    override func viewDidLoad() {
        if let photos = post["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // TODO: Get the photo url
            // 1.
            let photo = photos[0]
            // 2.
            let originalSize = photo["original_size"] as! [String: Any]
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            
            photoView.af_setImage(withURL: url!)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
