//
//  HomeViewController.swift
//  Makestagram
//
//  Created by Leila Adaza on 7/10/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    
    var posts = [Post]()
    
    // MARK: - Subviews
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
        UserService.posts(for: User.current) { (posts) in
            self.posts = posts
            self.tableView.reloadData()
        }
    }
    
    func configureTableView() {
        // remove separators for empty cells
        tableView.tableFooterView = UIView()
        // remove separators from cells
        tableView.separatorStyle = .none
    }
}

// MARK: - UITableViewDataSource

extension HomeViewController: UITableViewDataSource { func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return posts.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostImageCell", for: indexPath) as! PostImageCell
        
        let imageURL = URL(string: post.imageURL)
        cell.postImageView.kf.setImage(with: imageURL)
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension HomeViewController: UITableViewDelegate { func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { let post = posts[indexPath.row]
    
    return post.imageHeight
    }
}
