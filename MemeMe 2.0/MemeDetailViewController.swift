//
//  MemeDetailViewController.swift
//  MemeMe 2.0
//
//  Created by Jae Paek on 4/8/20.
//  Copyright © 2020 Jae Paek. All rights reserved.
//

import UIKit

class MemeDetailViewController : UIViewController {
    
    var meme: Meme!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Loaded detail view")
        self.tabBarController?.tabBar.isHidden = true
        self.imageView!.image = meme!.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBOutlet weak var imageView: UIImageView!
}
