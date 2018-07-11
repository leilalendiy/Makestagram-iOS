//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Leila Adaza on 7/10/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {
    
    static let height: CGFloat = 54
    
    // MARK: - Subviews
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    // MARK: - Cell Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBActions
    
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
        print("options button tapped")
    }
}
