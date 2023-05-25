//
//  TableViewController.swift
//  Task11UITableViewCustomDesign
//
//  Created by Богдан Бакун on 21.05.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataSourceArray: [InstaCell] = InstaPosts.posts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "InstaPostTableViewCell", bundle: nil), forCellReuseIdentifier: "InstaPostTableViewCell")
        
        navigationController?.navigationBar.isHidden = false
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "InstaPostTableViewCell", for: indexPath) as? InstaPostTableViewCell
        else {
            return UITableViewCell()
        }
        
        let element = dataSourceArray[indexPath.row]
        cell.selectionStyle = .none
        cell.accountNameLabel.text = element.accountName
        cell.avatarImage.image = UIImage(named: element.avatarImageName)
        cell.postImage.image = UIImage(named: element.postImageName)
        cell.viewCountLabel.text = "\(element.viewsCount) views"
        cell.descriptionLabel.text = element.description
        cell.countOfCommentsLabel.text = "View all \(element.countOfComments) comments"
        cell.postedAtLabel.text = element.postedAt
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 575
    }
}
