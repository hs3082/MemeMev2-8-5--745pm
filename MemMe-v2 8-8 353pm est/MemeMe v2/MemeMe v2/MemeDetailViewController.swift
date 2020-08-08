//
//  MemeDetailViewController.swift
//  MemeMe v2
//
//  Created by Howard Snyder on 8/5/20.
//  Copyright © 2020 Howard Snyder. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.memeLabel.text = self.meme.topText
        self.tabBarController?.tabBar.isHidden = true
        self.memeImageView!.image = meme.memedImage
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
}
