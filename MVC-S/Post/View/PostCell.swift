//
//  PostCell.swift
//  MVC-S
//
//  Created by Muhammad Faisal Imran Khan on 1/1/19.
//  Copyright © 2019 MI Apps. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    func configure(withPost post: Post) {
        titleLabel.text = post.title
        bodyTextView.text = post.body
    }
}
